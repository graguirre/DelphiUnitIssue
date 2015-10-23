# DelphiUnitIssue
The aim of this project is dealing with error message: "Package %P1% and %P2% both contain unit %U%".

Let's imagine we have a project tree like above

+---+        +---+
| A |        | B |
+-+-+        +-+-+
  |            |
  |            |
  |    +---+   |    +---+
  +--->| D |<--+    | C |
       +---+        +---+
        |             |
        |             |
        |    +---+    |
        +--->|APP|<---+
             +---+

Then we decide to add a new feature (a misterious unit we've found somewhere over the rainbow) to package A and C. We simply try to append the unit to our packages and boom!

Error: E2199 Packages 'PackageA' and 'PackageC' both contain unit 'UnitExternal'

I've tagged this version with the bug v0.2 in case you want to download it (git checkout -b BuggyProject v0.2)

The way to solve it is creating a new external BPL, in case you don't want to include in your project. We'll use the earlier. 

We create a new project with a single package, and the package includes the misterious unit, piece of cake so far. In this example I've located the project in the new 3rdParty directory. Compile and generate the DCP and BPL fo the external package.

Meanwhile in the original project we add (as require) the external package to PackageA and PackageC. Compile.

If you don't change the original dproj files, the Project.exe and BPLs should be at Win32\Release, if you try to run it you should get something like the program could find the PackageExternal.bpl. Get it from 3rdParty directory and deploy the Project.exe all togheter with the BPLs.



