# Package

version       = "0.1.0"
author        = "Anonymous"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["linked"]



# Dependencies

requires "nim >= 1.0.6"


task make_pragma,"make pragma":
  exec("nim c -d:nimDebugDlOpen -o:linked-pragma src/linkedpragma.nim")

task clean,"clean me":
  exec("rm -f linked-pragma")

