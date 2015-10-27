#
# Makefile, build delphi project
#

Platform=Win32
Config=Release

CC="C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\dcc32"

COMPDIR = -$O+
OUTPUTDIR = -LE.\$(Platform)\$(Config)  -E.\$(Platform)\$(Config) -NU.\$(Platform)\$(Config) -LN.\$(Platform)\$(Config) -U.\$(Platform)\$(Config);.\3rdParty 

DFLAGS = $(COMPDIR) -DRELEASE -M -NSSystem $(OUTPUTDIR) $(PATHS)

ProjectForm.exe: ProjectForm.dpr PackageE.bpl	
	$(CC) $(DFLAGS) -LUPackageE ProjectForm.dpr

Project.exe: Project.dpr PackageE.bpl
	$(CC) $(DFLAGS) -LUPackageE Project.dpr
	
PackageE.bpl: PackageE.dpk PackageC.bpl PackageD.bpl
	$(CC) $(DFLAGS) -LUPackageC;PackageD PackageE.dpk

PackageD.bpl: PackageD.dpk PackageA.bpl PackageB.bpl
	$(CC) $(DFLAGS) -LUPackageA;PackageB PackageD.dpk

PackageC.bpl: PackageC.dpk
	$(CC) $(DFLAGS) -LUPackageExternal PackageC.dpk

PackageB.bpl: PackageB.dpk
	$(CC) $(DFLAGS) PackageB.dpk

PackageA.bpl: PackageA.dpk 
	$(CC) $(DFLAGS) -LUPackageExternal PackageA.dpk
	
clean:
	del /q .\$(Platform)\$(Config)\*
