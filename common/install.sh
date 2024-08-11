ui_print " "
ui_print "-------------------------------------"
ui_print "*       EAGLE DEBLOAT MODULE         *"
ui_print "    Debloater for S23 Series A14     "
ui_print "                                     "
ui_print " Credits :                           "
ui_print " analytics script by foobar66        "
ui_print " template by Zackptg5 @ XDA          "
ui_print " Adguard for ca-certification        "
ui_print "-------------------------------------"
sleep 0.7
ui_print " "
ui_print "#########################"
ui_print " "
ui_print " Debloat Samsung Apps"
ui_print " Vol+ = Yes / Vol- = No "
ui_print " "
ui_print "#########################"

if $VKSEL; then
		REPLACE="$REPLACE
		/system/app/WebManual
		/system/app/KidsHome_Installer
		/system/app/SamsungCalendar
		/system/app/HoneyBoard
		/system/app/GearManagerStub
		/system/app/SmartReminder
		/system/app/MdecService
		/system/app/MAPSAgent
		/system/app/BBCAgent
		/system/app/LiveTranscribe
		/system/app/PlayAutoInstallConfig
		/system/app/SamsungPassAutofill_v1
		/system/app/SilentLog
		/system/app/UniversalMDMClient
		/system/app/WifiGuider
		/system/app/SmartSwitchAgent
		/system/app/SmartSwitchStub
		/system/app/ESEServiceAgent
		/system/app/Rampart
		/system/app/ParentalCare
		/system/hidden/

		/system/priv-app/SamsungBilling
		/system/priv-app/PaymentFramework
		/system/priv-app/SmartThingsKit
		/system/priv-app/SamsungMessages
		/system/priv-app/IpsGeofence
		/system/priv-app/AuthFramework
		/system/priv-app/SamsungCarKeyFw
		/system/priv-app/SamsungExperienceService
		/system/priv-app/MultiControlVP6
		/system/priv-app/MultiControl
		/system/priv-app/AirReadingGlass
		/system/priv-app/GameHome
		/system/priv-app/SamsungCloudClient
		/system/priv-app/RubinVersion34
		/system/priv-app/Fmm
		/system/priv-app/SCPMAgent
		/system/priv-app/SamsungMultiConnectivity
		/system/priv-app/MCFDeviceSync
		/system/priv-app/SamsungSmartSuggestions
		/system/priv-app/DigitalKey
		/system/priv-app/FotaAgent
		/system/priv-app/GalaxyBetaService
		/system/priv-app/knoxanalyticsagent
		/system/priv-app/knoxvpnproxyhandler
		/system/priv-app/ManagedProvisioning
		/system/priv-app/OMCAgent5
		/system/priv-app/SamsungPass
		/system/priv-app/Finder
		/system/priv-app/SPPPushClient
		/system/priv-app/EnhancedAttestationAgent
		/system/priv-app/KnoxPushManager
		/system/priv-app/KnoxMposAgent
		/system/priv-app/SecureFolder
		/system/priv-app/KnoxAIFrameworkApp
		/system/priv-app/KnoxNetworkFilter
		/system/priv-app/KnoxZtFramework
		/system/priv-app/KPECore
		/system/priv-app/SKMSAgentService
		/system/priv-app/SecAppSeparation
		/system/priv-app/SOAgent7
		/system/priv-app/NetworkDiagnostic
		/system/priv-app/GameOptimizingService
		/system/priv-app/GameTools_Dream
		/system/priv-app/HWResourceShare
		/system/priv-app/EasySetup
		/system/priv-app/BeaconManager
		/system/priv-app/AREmojiEditor
		/system/priv-app/AREmoji
		/system/priv-app/AvatarEmojiSticker
		/system/priv-app/TalkbackSE

		/prism/priv-app
		/prism/app
		
		"
		ui_print " Done Debloat Samsung Apps"
		sleep 1
	else
	ui_print " "
	ui_print "##########################################################"
    ui_print "Failed Debloat Samsung Apps"
	ui_print "##########################################################"
fi
ui_print " "
	ui_print "############################################################"
	ui_print " "
    ui_print " Debloat Dex"
    ui_print " Vol+ = Yes / Vol- = No "
	ui_print " "
	ui_print "############################################################"
	if $VKSEL; then
		REPLACE="$REPLACE 
		/system/priv-app/DeXonPC
		/system/priv-app/DesktopModeUiService
		/system/priv-app/KnoxDesktopLauncher
		/system/priv-app/DesktopSystemUI

		"
		ui_print " Done Debloat Dex"
		sleep 1
	else
	ui_print " "
	ui_print "##########################################################"
    ui_print "Failed Debloat Dex"
	ui_print "##########################################################"
	fi

ui_print " "
	ui_print "############################################################"
	ui_print " "
    ui_print " Debloat Google,Microsoft,Fb Apps"
    ui_print " Vol+ = Yes / Vol- = No "
	ui_print " "
	ui_print "############################################################"
	if $VKSEL; then
		REPLACE="$REPLACE 
		/system/app/ChromeCustomizations
		/system/app/VoiceAccess
		/system/app/FBAppManager_NS

		/system/priv-app/FBInstaller_NS
		/system/priv-app/FBServices
		/system/priv-app/OneDrive_Samsung_v3

		/system/product/app/Chrome		
		/system/product/app/Gmail2
		/system/product/app/YouTube
		/system/product/app/DuoStub
		/system/product/app/AssistantShell


		/system/product/app/GoogleLocationHistory

		/system/product/priv-app/GoogleRestore
		/system/product/priv-app/FamilyLinkParentalControls
		/system/product/priv-app/Messages

		/system/system_ext/priv-app/GoogleFeedback
		"
		ui_print " Done Debloat Google,Microsoft,Fb Apps"
		sleep 1
	else
	ui_print " "
	ui_print "##########################################################"
    ui_print "Failed Debloat Google,Microsoft,Fb Apps"
	ui_print "##########################################################"
	fi
ui_print " "
	ui_print "############################################################"
	ui_print " "
    ui_print " Debloat Bixby"
    ui_print " Vol+ = Yes / Vol- = No "
	ui_print " "
	ui_print "############################################################"
	if $VKSEL; then
		REPLACE="$REPLACE 
		/system/app/BixbyWakeup
		/system/app/VisionIntelligence3.7

		/system/priv-app/Routines
		/system/priv-app/Bixby
		/system/priv-app/SettingsBixby
		/system/priv-app/BixbyVisionFramework3.5

		"
		ui_print " Done Debloat Bixby"
		sleep 1
	else
	ui_print " "
	ui_print "##########################################################"
    ui_print "Failed Debloat Bixby"
	ui_print "##########################################################"
	fi

ui_print " Enjoy the ROM with more Privacy and more ram"