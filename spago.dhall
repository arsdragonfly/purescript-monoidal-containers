{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "monoidal-containers"
, dependencies = [ "console", "effect", "psci-support", "ordered-collections", "unordered-collections" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
