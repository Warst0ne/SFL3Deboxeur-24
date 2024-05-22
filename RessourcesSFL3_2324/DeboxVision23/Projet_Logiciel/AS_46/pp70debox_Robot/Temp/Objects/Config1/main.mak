SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\ProgramData\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\PuTTY\;C:\Program Files\doxygen\bin;C:\Program Files\dotnet\;C:\Program Files (x86)\dotnet\;C:\Program Files (x86)\CODESYS\APInstaller\;C:\Program Files (x86)\Vector CANdb++ 3.1\Exec32;C:\Users\timothee.lelievre\AppData\Local\Microsoft\WindowsApps;C:\Users\timothee.lelievre\AppData\Local\GitHubDesktop\bin;C:\Users\timothee.lelievre\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\timothee.lelievre\AppData\Local\Microsoft\WindowsApps;C:\Users\timothee.lelievre\AppData\Local\GitHubDesktop\bin;C:\Users\timothee.lelievre\AppData\Local\Programs\Microsoft VS Code\bin
export AS_BUILD_MODE := Build
export AS_VERSION := 4.6.3.55 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := timothee.lelievre
export AS_PATH := C:/BRAutomation/AS46
export AS_BIN_PATH := C:/BRAutomation/AS46/Bin-en
export AS_PROJECT_PATH := C:/Users/timothee.lelievre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxVision23/Projet_Logiciel/AS_46/pp70debox_Robot
export AS_PROJECT_NAME := pp70debox
export AS_SYSTEM_PATH := C:/BRAutomation/AS/System
export AS_VC_PATH := C:/BRAutomation/AS46/AS/VC
export AS_TEMP_PATH := C:/Users/timothee.lelievre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxVision23/Projet_Logiciel/AS_46/pp70debox_Robot/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/timothee.lelievre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxVision23/Projet_Logiciel/AS_46/pp70debox_Robot/Binaries
export AS_GNU_INST_PATH := C:/BRAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BRAutomation/AS46/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BRAutomation/AS46
export WIN32_AS_PATH := "C:\BRAutomation\AS46"
export WIN32_AS_BIN_PATH := "C:\BRAutomation\AS46\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\timothee.lelievre\Documents\GitHub\SFL3Deboxeur-24\RessourcesSFL3_2324\DeboxVision23\Projet_Logiciel\AS_46\pp70debox_Robot"
export WIN32_AS_SYSTEM_PATH := "C:\BRAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BRAutomation\AS46\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\timothee.lelievre\Documents\GitHub\SFL3Deboxeur-24\RessourcesSFL3_2324\DeboxVision23\Projet_Logiciel\AS_46\pp70debox_Robot\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\timothee.lelievre\Documents\GitHub\SFL3Deboxeur-24\RessourcesSFL3_2324\DeboxVision23\Projet_Logiciel\AS_46\pp70debox_Robot\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BRAutomation\AS46\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BRAutomation\AS46"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/pp70debox.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

