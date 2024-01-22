SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Users\hugo.pageaux\AppData\Local\Microsoft\WindowsApps;C:\Users\hugo.pageaux\AppData\Local\GitHubDesktop\bin;C:\Users\hugo.pageaux\AppData\Local\Microsoft\WindowsApps;C:\Users\hugo.pageaux\AppData\Local\GitHubDesktop\bin
export AS_BUILD_MODE := BuildAndCreateCompactFlash
export AS_VERSION := 4.6.3.55 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := hugo.pageaux
export AS_PATH := C:/BrAutomation/AS46
export AS_BIN_PATH := C:/BrAutomation/AS46/bin-en
export AS_PROJECT_PATH := C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5
export AS_PROJECT_NAME := Cognex_V1_5
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS46/AS/VC
export AS_TEMP_PATH := C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Temp
export AS_CONFIGURATION := PP500_15
export AS_BINARIES_PATH := C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS46
export WIN32_AS_PATH := "C:\BrAutomation\AS46"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS46\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\hugo.pageaux\Documents\GitHub\SN2_SFL3_Deboxeur_23\Ressource_sfl3\Cognex_23\CognexBRinsight7000\DemoV1_5"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS46\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\hugo.pageaux\Documents\GitHub\SN2_SFL3_Deboxeur_23\Ressource_sfl3\Cognex_23\CognexBRinsight7000\DemoV1_5\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\hugo.pageaux\Documents\GitHub\SN2_SFL3_Deboxeur_23\Ressource_sfl3\Cognex_23\CognexBRinsight7000\DemoV1_5\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS46\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS46"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Cognex_V1_5.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndCreateCompactFlash'   

