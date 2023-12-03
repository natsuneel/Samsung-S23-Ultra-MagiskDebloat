#!/system/bin/sh

exec > /data/local/tmp/adawaycert.log
exec 2>&1

set -x

MODDIR=${0%/*}

set_context() {
    [ "$(getenforce)" = "Enforcing" ] || return 0

    default_selinux_context=u:object_r:system_file:s0
    selinux_context=$(ls -Zd $1 | awk '{print $1}')

    if [ -n "$selinux_context" ] && [ "$selinux_context" != "?" ]; then
        chcon -R $selinux_context $2
    else
        chcon -R $default_selinux_context $2
    fi
}

# Android hashes the subject to get the filename, field order is significant.
# The filename is then <hash>.<n> where <n> is an integer to disambiguate
# different certs with the same hash (e.g. when the same cert is installed repeatedly).
# script credits go to adguard team

AG_CERT_HASH=27542cee
AG_CERT_FILE=${MODDIR}/system/etc/security/cacerts/${AG_CERT_HASH}.0

chown -R 0:0 ${MODDIR}/system/etc/security/cacerts
set_context /system/etc/security/cacerts ${MODDIR}/system/etc/security/cacerts

# Android 14 support
# Since Magisk ignore /apex for module file injections, use non-Magisk way
if [ -d /apex/com.android.conscrypt/cacerts ]; then
    # Clone directory into tmpfs
    rm -f /data/local/tmp/adaway-ca-copy
    mkdir -p /data/local/tmp/adaway-ca-copy
    mount -t tmpfs tmpfs /data/local/tmp/adaway-ca-copy
    cp -f /apex/com.android.conscrypt/cacerts/* /data/local/tmp/adaway-ca-copy/

    # Do the same as in Magisk module
    cp -f ${AG_CERT_FILE} /data/local/tmp/adaway-ca-copy
    chown -R 0:0 /data/local/tmp/adaway-ca-copy
    set_context /apex/com.android.conscrypt/cacerts /data/local/tmp/adaway-ca-copy

    # Mount directory inside APEX if it is valid, and remove temporary one.
    CERTS_NUM="$(ls -1 /data/local/tmp/adaway-ca-copy | wc -l)"
    if [ "$CERTS_NUM" -gt 10 ]; then
        mount --bind /data/local/tmp/adaway-ca-copy /apex/com.android.conscrypt/cacerts
    else
        echo "Cancelling replacing CA storage due to safety"
    fi
    umount /data/local/tmp/adaway-ca-copy
    rmdir /data/local/tmp/adaway-ca-copy
fi
