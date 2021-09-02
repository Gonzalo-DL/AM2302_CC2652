# invoke SourceDir generated makefile for AM2302.pem4f
AM2302.pem4f: .libraries,AM2302.pem4f
.libraries,AM2302.pem4f: package/cfg/AM2302_pem4f.xdl
	$(MAKE) -f C:\Users\swamb\workspace_v10\AM2302_CC26X2R1_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\swamb\workspace_v10\AM2302_CC26X2R1_tirtos_ccs/src/makefile.libs clean

