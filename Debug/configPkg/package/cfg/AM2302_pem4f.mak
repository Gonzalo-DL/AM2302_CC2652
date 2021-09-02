#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4F{1,0,20.2,5
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/AM2302_pem4f.oem4f.dep
package/cfg/AM2302_pem4f.oem4f.dep: ;
endif

package/cfg/AM2302_pem4f.oem4f: | .interfaces
package/cfg/AM2302_pem4f.oem4f: package/cfg/AM2302_pem4f.c package/cfg/AM2302_pem4f.mak 
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs" --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/posix/ccs" --include_path="C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=DeviceFamily_CC26X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/AM2302_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C   -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs" --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/posix/ccs" --include_path="C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=DeviceFamily_CC26X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/AM2302_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/AM2302_pem4f.oem4f: export C_DIR=
package/cfg/AM2302_pem4f.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/AM2302_pem4f.oem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

package/cfg/AM2302_pem4f.sem4f: | .interfaces
package/cfg/AM2302_pem4f.sem4f: package/cfg/AM2302_pem4f.c package/cfg/AM2302_pem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs" --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/posix/ccs" --include_path="C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=DeviceFamily_CC26X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/AM2302_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C  -n -s --symdebug:none -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs" --include_path="C:/Users/swamb/workspace_v10/AM2302_CC26X2R1_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/posix/ccs" --include_path="C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=DeviceFamily_CC26X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/AM2302_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/AM2302_pem4f.sem4f: export C_DIR=
package/cfg/AM2302_pem4f.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/AM2302_pem4f.sem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

clean,em4f ::
	-$(RM) package/cfg/AM2302_pem4f.oem4f
	-$(RM) package/cfg/AM2302_pem4f.sem4f

AM2302.pem4f: package/cfg/AM2302_pem4f.oem4f package/cfg/AM2302_pem4f.mak

clean::
	-$(RM) package/cfg/AM2302_pem4f.mak