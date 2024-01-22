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
PALFILE_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Palette.vcr
VCCFLAGS_Visu=-server -proj Visu -vc '$(AS_PROJECT_PATH)/Logical/Visu/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.62.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.62.0/SG4
VCOBJECT_Visu=$(AS_PROJECT_PATH)/Logical/Visu/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_Visu=$(AS_CPU_PATH)/Visu.br
OBJ_SCOPE_Visu=
PRJ_PATH_Visu=$(AS_PROJECT_PATH)
SRC_PATH_Visu=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visu)/Visu
TEMP_PATH_Visu=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Visu=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visu=$(TEMP_PATH_Visu)/libraries.vci
VC_XREF_BUILDFILE_Visu=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Visu=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_Visu)/cpuhwc.vci'
VC_STATIC_OPTIONS_Visu='$(TEMP_PATH_Visu)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Visu.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Visu=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_Visu='Source[local].StyleSheet[Default]'
SHARED_MODULE=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Visu=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)'
BDRFLAGS_Visu=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)'

# Local Libs
LIB_LOCAL_OBJ_Visu=$(TEMP_PATH_Visu)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Visu=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu/dis.Hardware.vco
PANEL_HW_VCI_Visu=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu/dis.Hardware.vci
PANEL_HW_SOURCE_Visu=C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Cognex_V1_5/Physical/PP500_15/Hardware.hw 
DIS_OBJECTS_Visu=$(PANEL_HW_OBJECT_Visu) $(KEYMAP_OBJECTS_Visu)

# KeyMapping flags
KEYMAP_SOURCES_Visu=
KEYMAP_OBJECTS_Visu=

# All Source Objects
TXTGRP_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/HeaderBar.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/Buttons_PageTexts.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/OfflineReason.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/TriggerReady.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/CameraOnline.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/httpURL_SDM.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/NativeModeConnected.txtgrp 

FNINFO_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Info.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Html_SDM.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Default.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Header.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Button.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Input.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Status.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Cognex.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/StatusBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Listbox.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/ButtonBig.fninfo 

BMINFO_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio_selected.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_09x09.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowRightGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowUpGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_BallGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_gray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_EditPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_EditPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/FrameInvisible.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/BackgroundXGA_NoLogo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Bitmap_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Bitmap_2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Sample.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Input.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Arrow_Down.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Arrow_Up.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/under_construction_pc_400_clr1.bminfo 

BMGRP_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmAcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmBypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Borders.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/GlobalArea.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pads.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/msgBox.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/OnOff.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/OffOn.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pictures.bmgrp 

PAGE_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Pages/page_MAIN.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/page_SETUP.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/page_DIAG.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/page_ARCHIVE.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/page_NATIVE.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/page_COMMISSIONING.page 

LAYER_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Layers/globalArea.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/Layers/Background.layer 

VCS_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/StyleSheets/Default.vcs 

BDR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio_selected.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNG.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/CheckBox_checked.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameHeader.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/OverdriveBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SliderBorder09.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNGgray.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameGlobal.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameInvisible.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_KeyRingOff.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_KeyRingOn.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Input.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Output.bdr 

TPR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/EditPad.tpr 

TDC_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Trends/TrendData.tdc 

VCVK_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/VirtualKeys.vcvk 

VCR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Visu=$(TEMP_PATH_Visu)/vcrt.vco
VCR_SOURCE_Visu=$(SRC_PATH_Visu)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Visu): $(PANEL_HW_SOURCE_Visu) $(VC_LIBRARY_LIST_Visu) $(KEYMAP_SOURCES_Visu)
	$(VCHWPP) -f '$<' -o '$@' -n Visu -d Visu -pal '$(PALFILE_Visu)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'B4.62' -L 'Visapi: V*' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visu) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.62.0/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'Cognex_V1_5' -vcob '$(VCOBJECT_Visu)'

$(PANEL_HW_OBJECT_Visu): $(PANEL_HW_VCI_Visu) $(PALFILE_Visu) $(VC_LIBRARY_LIST_Visu)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visu)' $(VCCFLAGS_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


# Pages
PAGE_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/page., $(notdir $(PAGE_SOURCES_Visu:.page=.vco)))

$(TEMP_PATH_Visu)/page.page_MAIN.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/page_MAIN.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/page.page_SETUP.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/page_SETUP.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/page.page_DIAG.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/page_DIAG.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/page.page_ARCHIVE.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/page_ARCHIVE.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/page.page_NATIVE.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/page_NATIVE.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/page.page_COMMISSIONING.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/page_COMMISSIONING.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/vcs., $(notdir $(VCS_SOURCES_Visu:.vcs=.vco)))

$(TEMP_PATH_Visu)/vcs.Default.vco: $(AS_PROJECT_PATH)/Logical/Visu/StyleSheets/Default.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/layer., $(notdir $(LAYER_SOURCES_Visu:.layer=.vco)))

$(TEMP_PATH_Visu)/layer.globalArea.vco: $(AS_PROJECT_PATH)/Logical/Visu/Layers/globalArea.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/layer.Background.vco: $(AS_PROJECT_PATH)/Logical/Visu/Layers/Background.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/vcvk., $(notdir $(VCVK_SOURCES_Visu:.vcvk=.vco)))

$(TEMP_PATH_Visu)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Visu/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas

$(VCVK_OBJECTS_Visu): $(VC_LANGUAGES_Visu)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tpr., $(notdir $(TPR_SOURCES_Visu:.tpr=.vco)))

$(TEMP_PATH_Visu)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Cognex_V1_5/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Cognex_V1_5/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Cognex_V1_5/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Cognex_V1_5/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/hugo.pageaux/Documents/GitHub/SN2_SFL3_Deboxeur_23/Ressource_sfl3/Cognex_23/CognexBRinsight7000/DemoV1_5/Cognex_V1_5/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Touch Pads END




# Text Groups
TXTGRP_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/txtgrp., $(notdir $(TXTGRP_SOURCES_Visu:.txtgrp=.vco)))

$(TEMP_PATH_Visu)/txtgrp.HeaderBar.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/HeaderBar.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/txtgrp.Buttons_PageTexts.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/Buttons_PageTexts.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/txtgrp.OfflineReason.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/OfflineReason.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/txtgrp.TriggerReady.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/TriggerReady.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/txtgrp.CameraOnline.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/CameraOnline.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/txtgrp.httpURL_SDM.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/httpURL_SDM.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/txtgrp.NativeModeConnected.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/NativeModeConnected.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Text Groups END




# BitmapGroups
BMGRP_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/bmgrp., $(notdir $(BMGRP_SOURCES_Visu:.bmgrp=.vco)))

$(TEMP_PATH_Visu)/bmgrp.AlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmAcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.AlarmBypassState.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmBypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.GlobalArea.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/GlobalArea.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.Pads.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pads.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.msgBox.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/msgBox.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.OnOff.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/OnOff.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.OffOn.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/OffOn.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bmgrp.Pictures.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pictures.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/bminfo., $(notdir $(BMINFO_SOURCES_Visu:.bminfo=.vco)))

$(TEMP_PATH_Visu)/bminfo.Key_NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.checkbox.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.checkbox_checked.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_checked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_default.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_default_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_down.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_global_area.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_down_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_down_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_up_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_up_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_radio_selected.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio_selected.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio_selected.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_radio.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_right.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_up.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_scroll_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_decrease_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_increase.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_increase_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.button_decrease.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/frame_header.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.checkbox_small.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.checkbox_small_checked.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_checked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPad.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPad.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPad_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Slider_09x09.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_09x09.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_09x09.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Slider_ArrowRightGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowRightGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowRightGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Slider_ArrowUpGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowUpGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowUpGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Slider_BallGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_BallGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_BallGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.checkbox_small_gray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_gray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_gray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_EditPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_EditPad.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_EditPad.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Key_EditPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_EditPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_EditPad_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.FrameInvisible.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/FrameInvisible.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/FrameInvisible.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.BackgroundXGA_NoLogo.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/BackgroundXGA_NoLogo.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/BackgroundXGA_NoLogo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Bitmap_1.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Bitmap_1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Bitmap_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Bitmap_2.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Bitmap_2.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Bitmap_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Sample.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Sample.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Sample.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Input.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Input.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Input.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Arrow_Down.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Arrow_Down.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Arrow_Down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.Arrow_Up.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Arrow_Up.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Arrow_Up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


$(TEMP_PATH_Visu)/bminfo.under_construction_pc_400_clr1.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/under_construction_pc_400_clr1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/under_construction_pc_400_clr1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tdc., $(notdir $(TDC_SOURCES_Visu:.tdc=.vco)))

$(TEMP_PATH_Visu)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Visu/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio_selected.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNG.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/CheckBox_checked.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameHeader.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/OverdriveBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SliderBorder09.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNGgray.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameGlobal.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameInvisible.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_KeyRingOff.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_KeyRingOn.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Input.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Output.bdr 
BDR_OBJECTS_Visu=$(TEMP_PATH_Visu)/bdr.Bordermanager.vco
$(TEMP_PATH_Visu)/bdr.Bordermanager.vco: $(BDR_SOURCES_Visu)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_Visu)' $(BDRFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu$(SRC_PATH_Visu)
#
# Logical fonts
#
$(TEMP_PATH_Visu)/lfnt.en.vco: $(TEMP_PATH_Visu)/en.lfnt $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu -sfas
LFNT_OBJECTS_Visu=$(TEMP_PATH_Visu)/lfnt.en.vco 

#Runtime Object
$(VCR_OBJECT_Visu) : $(VCR_SOURCE_Visu)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_Visu) -rt  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4620 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Visu=$(TEMP_PATH_Visu)/localres.vca
$(LIB_LOCAL_RES_Visu) : $(TEMP_PATH_Visu)/Visu02.ccf

# Bitmap Library rules
LIB_BMP_RES_Visu=$(TEMP_PATH_Visu)/bmpres.vca
$(LIB_BMP_RES_Visu) : $(TEMP_PATH_Visu)/Visu03.ccf
$(BMGRP_OBJECTS_Visu) : $(PALFILE_Visu) $(VC_LANGUAGES_Visu)
$(BMINFO_OBJECTS_Visu) : $(PALFILE_Visu)

BUILD_FILE_Visu=$(TEMP_PATH_Visu)/BuildFiles.arg
$(BUILD_FILE_Visu) : BUILD_FILE_CLEAN_Visu $(BUILD_SOURCES_Visu)
BUILD_FILE_CLEAN_Visu:
	$(RM) /F /Q '$(BUILD_FILE_Visu)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_Visu=$(AS_CPU_PATH)/Visu01.br $(AS_CPU_PATH)/Visu02.br $(AS_CPU_PATH)/Visu03.br $(FONT_MODULES_Visu) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Visu): $(PROJECT_MODULES_Visu) $(TEMP_PATH_Visu)/Visu.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_Visu)/Visu.prj' -o '$@' -vc '$(VCOBJECT_Visu)' $(DEPENDENCIES_Visu) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Visu:.br=)))

$(AS_CPU_PATH)/Visu01.br: $(TEMP_PATH_Visu)/Visu01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

$(AS_CPU_PATH)/Visu02.br: $(TEMP_PATH_Visu)/Visu02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

$(AS_CPU_PATH)/Visu03.br: $(TEMP_PATH_Visu)/Visu03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

# General Build rules END
$(LIB_LOCAL_OBJ_Visu) : $(TEMP_PATH_Visu)/Visu01.ccf

# Main Module
$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm:
$(TEMP_PATH_Visu)/Visu.prj: $(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_Visu) -o Visu -proj Visu
	$(VCPL) $(notdir $(PROJECT_MODULES_Visu:.br=,4)) Visu,2 -o '$@' -p Visu -vc 'Visu' -verbose 'False' -fl '$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm' -vcr '$(VCR_SOURCE_Visu)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Visu=$(TEMP_PATH_Visu)\Visu01.ccf.lfl
$(TEMP_PATH_Visu)/Visu01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu) $(TEMP_PATH_Visu)/Visu03.ccf $(LIB_LOCAL_RES_Visu) $(TEMP_PATH_Visu)/Visu02.ccf $(DIS_OBJECTS_Visu) $(PAGE_OBJECTS_Visu) $(VCS_OBJECTS_Visu) $(VCVK_OBJECTS_Visu) $(VCRT_OBJECTS_Visu) $(TPR_OBJECTS_Visu) $(TXTGRP_OBJECTS_Visu) $(LAYER_OBJECTS_Visu) $(VCR_OBJECT_Visu) $(TDC_OBJECTS_Visu) $(TRD_OBJECTS_Visu) $(TRE_OBJECTS_Visu) $(PRC_OBJECTS_Visu) $(SCR_OBJECTS_Visu)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Visu)" DEL /F /Q "$(DEL_TARGET01_LFL_Visu)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_LOCAL_OBJ_Visu)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Visu=$(TEMP_PATH_Visu)\Visu02.ccf.lfl
$(TEMP_PATH_Visu)/Visu02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu) $(TEMP_PATH_Visu)/Visu03.ccf $(BDR_OBJECTS_Visu) $(LFNT_OBJECTS_Visu) $(CLM_OBJECTS_Visu)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Visu)" DEL /F /Q "$(DEL_TARGET02_LFL_Visu)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_LOCAL_RES_Visu)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Visu=$(TEMP_PATH_Visu)\Visu03.ccf.lfl
$(TEMP_PATH_Visu)/Visu03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Visu) $(BMINFO_OBJECTS_Visu) $(PALFILE_Visu)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Visu)" DEL /F /Q "$(DEL_TARGET03_LFL_Visu)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_BMP_RES_Visu)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4620 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Visu

vcPostBuild_Visu :
	$(VCC) -pb -vcm '$(TEMP_PATH_Visu)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_Visu) -p Visu -vcr 4620 -sfas

# Post Build Steps END