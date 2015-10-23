# DelphiUnitIssue
The aim of this project is dealing with error message: "Package %p1% and %p2% both contain unit %u%".

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





