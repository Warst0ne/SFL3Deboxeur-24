SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files\Eclipse Adoptium\jre-8.0.362.9-hotspot\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Users\hugop\AppData\Local\Microsoft\WindowsApps;C:\Users\hugop\AppData\Local\GitHubDesktop\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\hugop\AppData\Local\Microsoft\WindowsApps;C:\Users\hugop\AppData\Local\GitHubDesktop\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.6.3.55 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := hugop
export AS_PATH := C:/BrAutomation/AS46
export AS_BIN_PATH := C:/BrAutomation/AS46/bin-en
export AS_PROJECT_PATH := C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo\ Pageaux/AS/pp70debox
export AS_PROJECT_NAME := pp70debox
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS46/AS/VC
export AS_TEMP_PATH := C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo\ Pageaux/AS/pp70debox/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo\ Pageaux/AS/pp70debox/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS46
export WIN32_AS_PATH := "C:\BrAutomation\AS46"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS46\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\hugop\Documents\GitHub\SN2_SFL3_Deboxeur_23\Hugo Pageaux\AS\pp70debox"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS46\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\hugop\Documents\GitHub\SN2_SFL3_Deboxeur_23\Hugo Pageaux\AS\pp70debox\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\hugop\Documents\GitHub\SN2_SFL3_Deboxeur_23\Hugo Pageaux\AS\pp70debox\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS46\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS46"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/pp70debox.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

