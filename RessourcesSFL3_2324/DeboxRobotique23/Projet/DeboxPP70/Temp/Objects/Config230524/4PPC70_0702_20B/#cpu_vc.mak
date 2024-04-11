export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_BIN_PATH := C:/BrAutomation/AS46/bin-en
export AS_INSTALL_PATH := C:/BrAutomation/AS46
export AS_PATH := C:/BrAutomation/AS46
export AS_VC_PATH := C:/BrAutomation/AS46/AS/VC
export AS_GNU_INST_PATH := C:/BrAutomation/AS46/AS/GnuInst/V4.1.2
export AS_STATIC_ARCHIVES_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Temp/Archives/Config230524/4PPC70_0702_20B
export AS_CPU_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Temp/Objects/Config230524/4PPC70_0702_20B
export AS_CPU_PATH_2 := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Temp/Objects/Config230524/4PPC70_0702_20B
export AS_TEMP_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Temp
export AS_BINARIES_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Binaries
export AS_PROJECT_CPU_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Physical/Config230524/4PPC70_0702_20B
export AS_PROJECT_CONFIG_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70/Physical/Config230524
export AS_PROJECT_PATH := C:/Users/lois.lemaitre/Documents/GitHub/SFL3Deboxeur-24/RessourcesSFL3_2324/DeboxRobotique23/Projet/DeboxPP70
export AS_PROJECT_NAME := DeboxPP70
export AS_PLC := 4PPC70_0702_20B
export AS_TEMP_PLC := 4PPC70_0702_20B
export AS_USER_NAME := lois.lemaitre
export AS_CONFIGURATION := Config230524
export AS_COMPANY_NAME := \ 
export AS_VERSION := 4.6.3.55\ SP


default: \
	$(AS_CPU_PATH)/VisuRo.br \
	vcPostBuild_VisuRo \



include $(AS_CPU_PATH)/VisuRo/VisuRo.mak
