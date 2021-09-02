# invoke SourceDir generated makefile for hello.pem4f
hello.pem4f: .libraries,hello.pem4f
.libraries,hello.pem4f: package/cfg/hello_pem4f.xdl
	$(MAKE) -f C:\Users\swamb\workspace_v10\AM2302_CC26X2R1_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\swamb\workspace_v10\AM2302_CC26X2R1_tirtos_ccs/src/makefile.libs clean

