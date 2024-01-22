######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Palette.vcr
VCCFLAGS_VisuPP=-server -proj VisuPP -vc '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.62.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.62.0/SG4
VCOBJECT_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_VisuPP=$(AS_CPU_PATH)/VisuPP.br
OBJ_SCOPE_VisuPP=
PRJ_PATH_VisuPP=$(AS_PROJECT_PATH)
SRC_PATH_VisuPP=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_VisuPP)/VisuPP70sync
TEMP_PATH_VisuPP=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuPP
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_VisuPP=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_VisuPP=$(TEMP_PATH_VisuPP)/libraries.vci
VC_XREF_BUILDFILE_VisuPP=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_VisuPP=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_VisuPP)/cpuhwc.vci'
VC_STATIC_OPTIONS_VisuPP='$(TEMP_PATH_VisuPP)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_VisuPP.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_VisuPP=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_VisuPP='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_VisuPP=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)'
BDRFLAGS_VisuPP=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)'

# Local Libs
LIB_LOCAL_OBJ_VisuPP=$(TEMP_PATH_VisuPP)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_VisuPP=$(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuPP/dis.Hardware.vco
PANEL_HW_VCI_VisuPP=$(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuPP/dis.Hardware.vci
PANEL_HW_SOURCE_VisuPP=C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo\ Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Physical/Config1/Hardware.hw 
DIS_OBJECTS_VisuPP=$(PANEL_HW_OBJECT_VisuPP) $(KEYMAP_OBJECTS_VisuPP)

# KeyMapping flags
KEYMAP_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Physical/Config1/4PPC70_0702_20B/VC/4PPC70_0702_20B.dis 
KEYMAP_OBJECTS_VisuPP=

# All Source Objects
FNINFO_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/IHM_SFL3.page \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/Camera.page \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/Robot.page \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/BDD.page 

VCS_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/StyleSheets/Color.vcs 

BDR_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/FrameHeader.bdr 

TPR_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/EditPad.tpr 

TDC_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Trends/TrendData.tdc 

VCVK_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/VirtualKeys.vcvk 

VCR_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_VisuPP=$(TEMP_PATH_VisuPP)/vcrt.vco
VCR_SOURCE_VisuPP=$(SRC_PATH_VisuPP)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_VisuPP): $(PANEL_HW_SOURCE_VisuPP) $(VC_LIBRARY_LIST_VisuPP) $(KEYMAP_SOURCES_VisuPP)
	$(VCHWPP) -f '$<' -o '$@' -n VisuPP70sync -d VisuPP -pal '$(PALFILE_VisuPP)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'B4.62' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_VisuPP) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.62.0/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'pp70debox' -vcob '$(VCOBJECT_VisuPP)'

$(PANEL_HW_OBJECT_VisuPP): $(PANEL_HW_VCI_VisuPP) $(PALFILE_VisuPP) $(VC_LIBRARY_LIST_VisuPP)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_VisuPP)' $(VCCFLAGS_VisuPP) -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


# Pages
PAGE_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/page., $(notdir $(PAGE_SOURCES_VisuPP:.page=.vco)))

$(TEMP_PATH_VisuPP)/page.IHM_SFL3.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/IHM_SFL3.page $(VC_LANGUAGES_VisuPP)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuPP)/StyleSheets/Color.vcs' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/page.Camera.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/Camera.page $(VC_LANGUAGES_VisuPP)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuPP)/StyleSheets/Color.vcs' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/page.Robot.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/Robot.page $(VC_LANGUAGES_VisuPP)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuPP)/StyleSheets/Color.vcs' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/page.BDD.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Pages/BDD.page $(VC_LANGUAGES_VisuPP)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuPP)/StyleSheets/Color.vcs' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/vcs., $(notdir $(VCS_SOURCES_VisuPP:.vcs=.vco)))

$(TEMP_PATH_VisuPP)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_VisuPP) -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_VisuPP) -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/vcvk., $(notdir $(VCVK_SOURCES_VisuPP:.vcvk=.vco)))

$(TEMP_PATH_VisuPP)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas

$(VCVK_OBJECTS_VisuPP): $(VC_LANGUAGES_VisuPP)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/tpr., $(notdir $(TPR_SOURCES_VisuPP:.tpr=.vco)))

$(TEMP_PATH_VisuPP)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -prj 'C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Logical/VisuPP70sync' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -prj 'C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Logical/VisuPP70sync' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -prj 'C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Logical/VisuPP70sync' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -prj 'C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Logical/VisuPP70sync' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -prj 'C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Logical/VisuPP70sync' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP) -prj 'C:/Users/hugop/Documents/GitHub/SN2_SFL3_Deboxeur_23/Hugo Pageaux/Projet_Final_Partie_Camera/pp70debox_Vision/Logical/VisuPP70sync' -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/bmgrp., $(notdir $(BMGRP_SOURCES_VisuPP:.bmgrp=.vco)))

$(TEMP_PATH_VisuPP)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/bminfo., $(notdir $(BMINFO_SOURCES_VisuPP:.bminfo=.vco)))

$(TEMP_PATH_VisuPP)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


$(TEMP_PATH_VisuPP)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_VisuPP = $(addprefix $(TEMP_PATH_VisuPP)/tdc., $(notdir $(TDC_SOURCES_VisuPP:.tdc=.vco)))

$(TEMP_PATH_VisuPP)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuPP)' $(VCCFLAGS_VisuPP)  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_VisuPP=$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VisuPP70sync/Borders/FrameHeader.bdr 
BDR_OBJECTS_VisuPP=$(TEMP_PATH_VisuPP)/bdr.Bordermanager.vco
$(TEMP_PATH_VisuPP)/bdr.Bordermanager.vco: $(BDR_SOURCES_VisuPP)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_VisuPP)' $(BDRFLAGS_VisuPP) $(VCCFLAGS_VisuPP) -p VisuPP$(SRC_PATH_VisuPP)
#
# Logical fonts
#
$(TEMP_PATH_VisuPP)/lfnt.en.vco: $(TEMP_PATH_VisuPP)/en.lfnt $(VC_LANGUAGES_VisuPP)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_VisuPP) $(VCCFLAGS_VisuPP) -p VisuPP -sfas
$(TEMP_PATH_VisuPP)/lfnt.de.vco: $(TEMP_PATH_VisuPP)/de.lfnt $(VC_LANGUAGES_VisuPP)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_VisuPP) $(VCCFLAGS_VisuPP) -p VisuPP -sfas
LFNT_OBJECTS_VisuPP=$(TEMP_PATH_VisuPP)/lfnt.en.vco $(TEMP_PATH_VisuPP)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_VisuPP) : $(VCR_SOURCE_VisuPP)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_VisuPP) -rt  -p VisuPP -so $(VC_STATIC_OPTIONS_VisuPP) -vcr 4620 -sfas
# Local resources Library rules
LIB_LOCAL_RES_VisuPP=$(TEMP_PATH_VisuPP)/localres.vca
$(LIB_LOCAL_RES_VisuPP) : $(TEMP_PATH_VisuPP)/VisuPP02.ccf

# Bitmap Library rules
LIB_BMP_RES_VisuPP=$(TEMP_PATH_VisuPP)/bmpres.vca
$(LIB_BMP_RES_VisuPP) : $(TEMP_PATH_VisuPP)/VisuPP03.ccf
$(BMGRP_OBJECTS_VisuPP) : $(PALFILE_VisuPP) $(VC_LANGUAGES_VisuPP)
$(BMINFO_OBJECTS_VisuPP) : $(PALFILE_VisuPP)

BUILD_FILE_VisuPP=$(TEMP_PATH_VisuPP)/BuildFiles.arg
$(BUILD_FILE_VisuPP) : BUILD_FILE_CLEAN_VisuPP $(BUILD_SOURCES_VisuPP)
BUILD_FILE_CLEAN_VisuPP:
	$(RM) /F /Q '$(BUILD_FILE_VisuPP)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_VisuPP=$(AS_CPU_PATH)/VisuPP01.br $(AS_CPU_PATH)/VisuPP02.br $(AS_CPU_PATH)/VisuPP03.br $(FONT_MODULES_VisuPP) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_VisuPP): $(PROJECT_MODULES_VisuPP) $(TEMP_PATH_VisuPP)/VisuPP.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuPP) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_VisuPP)/VisuPP.prj' -o '$@' -vc '$(VCOBJECT_VisuPP)' $(DEPENDENCIES_VisuPP) $(addprefix -d ,$(notdir $(PROJECT_MODULES_VisuPP:.br=)))

$(AS_CPU_PATH)/VisuPP01.br: $(TEMP_PATH_VisuPP)/VisuPP01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuPP) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuPP)' -f '$<' -o '$@' $(DEPENDENCIES_VisuPP)

$(AS_CPU_PATH)/VisuPP02.br: $(TEMP_PATH_VisuPP)/VisuPP02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuPP) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuPP)' -f '$<' -o '$@' $(DEPENDENCIES_VisuPP)

$(AS_CPU_PATH)/VisuPP03.br: $(TEMP_PATH_VisuPP)/VisuPP03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuPP) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuPP)' -f '$<' -o '$@' $(DEPENDENCIES_VisuPP)

# General Build rules END
$(LIB_LOCAL_OBJ_VisuPP) : $(TEMP_PATH_VisuPP)/VisuPP01.ccf

# Main Module
$(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuPP.vcm:
$(TEMP_PATH_VisuPP)/VisuPP.prj: $(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuPP.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuPP.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_VisuPP) -o VisuPP -proj VisuPP
	$(VCPL) $(notdir $(PROJECT_MODULES_VisuPP:.br=,4)) VisuPP,2 -o '$@' -p VisuPP -vc 'VisuPP' -verbose 'False' -fl '$(TEMP_PATH_ROOT_VisuPP)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuPP.vcm' -vcr '$(VCR_SOURCE_VisuPP)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_VisuPP=$(TEMP_PATH_VisuPP)\VisuPP01.ccf.lfl
$(TEMP_PATH_VisuPP)/VisuPP01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_VisuPP) $(TEMP_PATH_VisuPP)/VisuPP03.ccf $(LIB_LOCAL_RES_VisuPP) $(TEMP_PATH_VisuPP)/VisuPP02.ccf $(DIS_OBJECTS_VisuPP) $(PAGE_OBJECTS_VisuPP) $(VCS_OBJECTS_VisuPP) $(VCVK_OBJECTS_VisuPP) $(VCRT_OBJECTS_VisuPP) $(TPR_OBJECTS_VisuPP) $(TXTGRP_OBJECTS_VisuPP) $(LAYER_OBJECTS_VisuPP) $(VCR_OBJECT_VisuPP) $(TDC_OBJECTS_VisuPP) $(TRD_OBJECTS_VisuPP) $(TRE_OBJECTS_VisuPP) $(PRC_OBJECTS_VisuPP) $(SCR_OBJECTS_VisuPP)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_VisuPP)" DEL /F /Q "$(DEL_TARGET01_LFL_VisuPP)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_VisuPP)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_VisuPP)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuPP -lib '$(LIB_LOCAL_OBJ_VisuPP)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_VisuPP=$(TEMP_PATH_VisuPP)\VisuPP02.ccf.lfl
$(TEMP_PATH_VisuPP)/VisuPP02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_VisuPP) $(TEMP_PATH_VisuPP)/VisuPP03.ccf $(BDR_OBJECTS_VisuPP) $(LFNT_OBJECTS_VisuPP) $(CLM_OBJECTS_VisuPP)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_VisuPP)" DEL /F /Q "$(DEL_TARGET02_LFL_VisuPP)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_VisuPP)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_VisuPP:.vco=.vco|)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuPP -lib '$(LIB_LOCAL_RES_VisuPP)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_VisuPP=$(TEMP_PATH_VisuPP)\VisuPP03.ccf.lfl
$(TEMP_PATH_VisuPP)/VisuPP03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_VisuPP) $(BMINFO_OBJECTS_VisuPP) $(PALFILE_VisuPP)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_VisuPP)" DEL /F /Q "$(DEL_TARGET03_LFL_VisuPP)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/VisuPP70sync/Package.vcp' -temp '$(TEMP_PATH_VisuPP)' -prj '$(PRJ_PATH_VisuPP)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuPP -lib '$(LIB_BMP_RES_VisuPP)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 03 Module END

