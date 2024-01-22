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
PALFILE_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Palette.vcr
VCCFLAGS_VisuRo=-server -proj VisuRo -vc '$(AS_PROJECT_PATH)/Logical/VisuRobot/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.62.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.62.0/SG4
VCOBJECT_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_VisuRo=$(AS_CPU_PATH)/VisuRo.br
OBJ_SCOPE_VisuRo=
PRJ_PATH_VisuRo=$(AS_PROJECT_PATH)
SRC_PATH_VisuRo=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_VisuRo)/VisuRobot
TEMP_PATH_VisuRo=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuRo
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_VisuRo=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_VisuRo=$(TEMP_PATH_VisuRo)/libraries.vci
VC_XREF_BUILDFILE_VisuRo=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_VisuRo=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_VisuRo)/cpuhwc.vci'
VC_STATIC_OPTIONS_VisuRo='$(TEMP_PATH_VisuRo)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_VisuRo.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_VisuRo=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_VisuRo='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_VisuRo=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)'
BDRFLAGS_VisuRo=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)'

# Local Libs
LIB_LOCAL_OBJ_VisuRo=$(TEMP_PATH_VisuRo)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_VisuRo=$(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuRo/dis.Hardware.vco
PANEL_HW_VCI_VisuRo=$(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuRo/dis.Hardware.vci
PANEL_HW_SOURCE_VisuRo=C:/projects/DeboxPP70/Physical/Config230524/Hardware.hw 
DIS_OBJECTS_VisuRo=$(PANEL_HW_OBJECT_VisuRo) $(KEYMAP_OBJECTS_VisuRo)

# KeyMapping flags
KEYMAP_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Physical/Config230524/4PPC70_0702_20B/VC/4PPC70_0702_20B.dis 
KEYMAP_OBJECTS_VisuRo=

# All Source Objects
FNINFO_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Pages/Init_Page.page \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Pages/Axis.page \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Pages/Automatisation.page 

VCS_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/StyleSheets/Color.vcs 

BDR_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/FrameHeader.bdr 

TPR_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/EditPad.tpr 

TDC_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Trends/TrendData.tdc 

CLM_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/ColorMaps/ColorMap_1.clm 

VCVK_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/VirtualKeys.vcvk 

VCR_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_VisuRo=$(TEMP_PATH_VisuRo)/vcrt.vco
VCR_SOURCE_VisuRo=$(SRC_PATH_VisuRo)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_VisuRo): $(PANEL_HW_SOURCE_VisuRo) $(VC_LIBRARY_LIST_VisuRo) $(KEYMAP_SOURCES_VisuRo)
	$(VCHWPP) -f '$<' -o '$@' -n VisuRobot -d VisuRo -pal '$(PALFILE_VisuRo)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'B4.62' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_VisuRo) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.62.0/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'DeboxPP70' -vcob '$(VCOBJECT_VisuRo)'

$(PANEL_HW_OBJECT_VisuRo): $(PANEL_HW_VCI_VisuRo) $(PALFILE_VisuRo) $(VC_LIBRARY_LIST_VisuRo)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_VisuRo)' $(VCCFLAGS_VisuRo) -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


# Pages
PAGE_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/page., $(notdir $(PAGE_SOURCES_VisuRo:.page=.vco)))

$(TEMP_PATH_VisuRo)/page.Init_Page.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Pages/Init_Page.page $(VC_LANGUAGES_VisuRo)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuRo)/StyleSheets/Color.vcs' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/page.Axis.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Pages/Axis.page $(VC_LANGUAGES_VisuRo)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuRo)/StyleSheets/Color.vcs' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/page.Automatisation.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Pages/Automatisation.page $(VC_LANGUAGES_VisuRo)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuRo)/StyleSheets/Color.vcs' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/vcs., $(notdir $(VCS_SOURCES_VisuRo:.vcs=.vco)))

$(TEMP_PATH_VisuRo)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_VisuRo) -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_VisuRo) -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/vcvk., $(notdir $(VCVK_SOURCES_VisuRo:.vcvk=.vco)))

$(TEMP_PATH_VisuRo)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas

$(VCVK_OBJECTS_VisuRo): $(VC_LANGUAGES_VisuRo)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/tpr., $(notdir $(TPR_SOURCES_VisuRo:.tpr=.vco)))

$(TEMP_PATH_VisuRo)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -prj 'C:/projects/DeboxPP70/Logical/VisuRobot' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -prj 'C:/projects/DeboxPP70/Logical/VisuRobot' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -prj 'C:/projects/DeboxPP70/Logical/VisuRobot' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -prj 'C:/projects/DeboxPP70/Logical/VisuRobot' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -prj 'C:/projects/DeboxPP70/Logical/VisuRobot' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo) -prj 'C:/projects/DeboxPP70/Logical/VisuRobot' -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/bmgrp., $(notdir $(BMGRP_SOURCES_VisuRo:.bmgrp=.vco)))

$(TEMP_PATH_VisuRo)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/bminfo., $(notdir $(BMINFO_SOURCES_VisuRo:.bminfo=.vco)))

$(TEMP_PATH_VisuRo)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


$(TEMP_PATH_VisuRo)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisuRobot/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/tdc., $(notdir $(TDC_SOURCES_VisuRo:.tdc=.vco)))

$(TEMP_PATH_VisuRo)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#Trend Data Configuration END




# ColorMap Table
CLM_OBJECTS_VisuRo = $(addprefix $(TEMP_PATH_VisuRo)/clm., $(notdir $(CLM_SOURCES_VisuRo:.clm=.vco)))

$(TEMP_PATH_VisuRo)/clm.ColorMap_1.vco: $(AS_PROJECT_PATH)/Logical/VisuRobot/ColorMaps/ColorMap_1.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuRo)' $(VCCFLAGS_VisuRo)  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas


#ColorMap Table END


#
# Borders
#
BDR_SOURCES_VisuRo=$(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VisuRobot/Borders/FrameHeader.bdr 
BDR_OBJECTS_VisuRo=$(TEMP_PATH_VisuRo)/bdr.Bordermanager.vco
$(TEMP_PATH_VisuRo)/bdr.Bordermanager.vco: $(BDR_SOURCES_VisuRo)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_VisuRo)' $(BDRFLAGS_VisuRo) $(VCCFLAGS_VisuRo) -p VisuRo$(SRC_PATH_VisuRo)
#
# Logical fonts
#
$(TEMP_PATH_VisuRo)/lfnt.en.vco: $(TEMP_PATH_VisuRo)/en.lfnt $(VC_LANGUAGES_VisuRo)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_VisuRo) $(VCCFLAGS_VisuRo) -p VisuRo -sfas
$(TEMP_PATH_VisuRo)/lfnt.de.vco: $(TEMP_PATH_VisuRo)/de.lfnt $(VC_LANGUAGES_VisuRo)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_VisuRo) $(VCCFLAGS_VisuRo) -p VisuRo -sfas
LFNT_OBJECTS_VisuRo=$(TEMP_PATH_VisuRo)/lfnt.en.vco $(TEMP_PATH_VisuRo)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_VisuRo) : $(VCR_SOURCE_VisuRo)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_VisuRo) -rt  -p VisuRo -so $(VC_STATIC_OPTIONS_VisuRo) -vcr 4620 -sfas
# Local resources Library rules
LIB_LOCAL_RES_VisuRo=$(TEMP_PATH_VisuRo)/localres.vca
$(LIB_LOCAL_RES_VisuRo) : $(TEMP_PATH_VisuRo)/VisuRo02.ccf

# Bitmap Library rules
LIB_BMP_RES_VisuRo=$(TEMP_PATH_VisuRo)/bmpres.vca
$(LIB_BMP_RES_VisuRo) : $(TEMP_PATH_VisuRo)/VisuRo03.ccf
$(BMGRP_OBJECTS_VisuRo) : $(PALFILE_VisuRo) $(VC_LANGUAGES_VisuRo)
$(BMINFO_OBJECTS_VisuRo) : $(PALFILE_VisuRo)

BUILD_FILE_VisuRo=$(TEMP_PATH_VisuRo)/BuildFiles.arg
$(BUILD_FILE_VisuRo) : BUILD_FILE_CLEAN_VisuRo $(BUILD_SOURCES_VisuRo)
BUILD_FILE_CLEAN_VisuRo:
	$(RM) /F /Q '$(BUILD_FILE_VisuRo)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_VisuRo=$(AS_CPU_PATH)/VisuRo01.br $(AS_CPU_PATH)/VisuRo02.br $(AS_CPU_PATH)/VisuRo03.br $(FONT_MODULES_VisuRo) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_VisuRo): $(PROJECT_MODULES_VisuRo) $(TEMP_PATH_VisuRo)/VisuRo.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuRo) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_VisuRo)/VisuRo.prj' -o '$@' -vc '$(VCOBJECT_VisuRo)' $(DEPENDENCIES_VisuRo) $(addprefix -d ,$(notdir $(PROJECT_MODULES_VisuRo:.br=)))

$(AS_CPU_PATH)/VisuRo01.br: $(TEMP_PATH_VisuRo)/VisuRo01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuRo) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuRo)' -f '$<' -o '$@' $(DEPENDENCIES_VisuRo)

$(AS_CPU_PATH)/VisuRo02.br: $(TEMP_PATH_VisuRo)/VisuRo02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuRo) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuRo)' -f '$<' -o '$@' $(DEPENDENCIES_VisuRo)

$(AS_CPU_PATH)/VisuRo03.br: $(TEMP_PATH_VisuRo)/VisuRo03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuRo) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuRo)' -f '$<' -o '$@' $(DEPENDENCIES_VisuRo)

# General Build rules END
$(LIB_LOCAL_OBJ_VisuRo) : $(TEMP_PATH_VisuRo)/VisuRo01.ccf

# Main Module
$(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuRo.vcm:
$(TEMP_PATH_VisuRo)/VisuRo.prj: $(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuRo.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuRo.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_VisuRo) -o VisuRo -proj VisuRo
	$(VCPL) $(notdir $(PROJECT_MODULES_VisuRo:.br=,4)) VisuRo,2 -o '$@' -p VisuRo -vc 'VisuRo' -verbose 'False' -fl '$(TEMP_PATH_ROOT_VisuRo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuRo.vcm' -vcr '$(VCR_SOURCE_VisuRo)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_VisuRo=$(TEMP_PATH_VisuRo)\VisuRo01.ccf.lfl
$(TEMP_PATH_VisuRo)/VisuRo01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_VisuRo) $(TEMP_PATH_VisuRo)/VisuRo03.ccf $(LIB_LOCAL_RES_VisuRo) $(TEMP_PATH_VisuRo)/VisuRo02.ccf $(DIS_OBJECTS_VisuRo) $(PAGE_OBJECTS_VisuRo) $(VCS_OBJECTS_VisuRo) $(VCVK_OBJECTS_VisuRo) $(VCRT_OBJECTS_VisuRo) $(TPR_OBJECTS_VisuRo) $(TXTGRP_OBJECTS_VisuRo) $(LAYER_OBJECTS_VisuRo) $(VCR_OBJECT_VisuRo) $(TDC_OBJECTS_VisuRo) $(TRD_OBJECTS_VisuRo) $(TRE_OBJECTS_VisuRo) $(PRC_OBJECTS_VisuRo) $(SCR_OBJECTS_VisuRo)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_VisuRo)" DEL /F /Q "$(DEL_TARGET01_LFL_VisuRo)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_VisuRo)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_VisuRo)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuRo -lib '$(LIB_LOCAL_OBJ_VisuRo)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_VisuRo=$(TEMP_PATH_VisuRo)\VisuRo02.ccf.lfl
$(TEMP_PATH_VisuRo)/VisuRo02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_VisuRo) $(TEMP_PATH_VisuRo)/VisuRo03.ccf $(BDR_OBJECTS_VisuRo) $(LFNT_OBJECTS_VisuRo) $(CLM_OBJECTS_VisuRo)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_VisuRo)" DEL /F /Q "$(DEL_TARGET02_LFL_VisuRo)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_VisuRo)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_VisuRo:.vco=.vco|)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuRo -lib '$(LIB_LOCAL_RES_VisuRo)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_VisuRo=$(TEMP_PATH_VisuRo)\VisuRo03.ccf.lfl
$(TEMP_PATH_VisuRo)/VisuRo03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_VisuRo) $(BMINFO_OBJECTS_VisuRo) $(PALFILE_VisuRo)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_VisuRo)" DEL /F /Q "$(DEL_TARGET03_LFL_VisuRo)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/VisuRobot/Package.vcp' -temp '$(TEMP_PATH_VisuRo)' -prj '$(PRJ_PATH_VisuRo)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuRo -lib '$(LIB_BMP_RES_VisuRo)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_VisuRo

vcPostBuild_VisuRo :
	$(VCC) -pb -vcm '$(TEMP_PATH_VisuRo)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_VisuRo) -p VisuRo -vcr 4620 -sfas

# Post Build Steps END
