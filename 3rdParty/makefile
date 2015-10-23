#
# Makefile, build delphi project
#

Platform=Win32
Config=Release

CC="C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\dcc32"

COMPDIR = -$O+
OUTPUTDIR = -LE.\ -E.\ -NU.\ -LN.\

DFLAGS = $(COMPDIR) -DRELEASE -M -NSSystem $(OUTPUTDIR) $(PATHS)

PackageExternal.bpl: PackageExternal.dpk
	$(CC) $(DFLAGS) PackageExternal.dpk
	
clean:
	del /q *.bpl *.dcu *.dcp
