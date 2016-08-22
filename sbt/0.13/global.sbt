// fork in run := true

resolvers += "Artima Maven Repository" at "http://repo.artima.com/releases"

libraryDependencies += "com.lihaoyi" % "ammonite-repl" % "0.7.4" % "test" cross CrossVersion.full

initialCommands in (Test, console) := """ammonite.repl.Main.run("")"""

//scalacOptions ++= Seq("-deprecation", "-unchecked", "-feature")

cancelable in Global := true

// import org.ensime.Imports.EnsimeKeys
// import scalariform.formatter.preferences._

// One day, when ENSIME uses a version of scalariform that doesn't dangle my parens.

// EnsimeKeys.scalariform := EnsimeKeys.scalariform.value
//   .setPreference(DoubleIndentClassDeclaration, true)
//   .setPreference(MultilineScaladocCommentsStartOnFirstLine, true)
//   .setPreference(PlaceScaladocAsterisksBeneathSecondAsterisk, true)
//   .setPreference(DanglingCloseParenthesis, Prevent)
//   // .setPreference(DoubleIndentMethodDeclaration, true)
//   // .setPreference(NewlineAtEndOfFile, true)
