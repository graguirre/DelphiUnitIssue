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

Then we decide to add a new feature (external library) to package A and C.
