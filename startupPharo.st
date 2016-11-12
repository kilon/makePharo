(SmalltalkImage current shortImageName includesSubstring: 'Ephestos') ifTrue: [

StartupPreferencesLoader default executeAtomicItems: { StartupAction name: 'Load dependencies' code:
[

"UIManager default inform: 'Installing IconFactory. Please wait....'.  Metacello new
configuration:'IconFactory'; version: #stable; smalltalkhubUser: 'peteruhnak' project:'IconFactory';
load."

UIManager default inform: 'Installing ChronosManager.Please wait...'.  Metacello new baseline:
'ChronosManager' ; repository: 'github://kilon/ChronosManager:master';load.

UIManager default inform: 'Installing Nireas. Please wait...'.  Metacello new baseline: 'Nireas' ;
repository: 'github://kilon/Nireas:master';load.Transcript show:' done ';cr;cr.

UIManager default inform:'Installing Ephestos. Please wait...'.  Metacello new baseline: 'Ephestos';
repository: 'github://kilon/Ephestos:master';load.

UIManager default inform:'Installing Octopus. Please wait...'.  Metacello new baseline: 'Octopus' ;
repository: 'github://kilon/Octopus:master';load.

UIManager default inform:'Installing CPP. Please wait...'.Metacello new baseline: 'CPPBridge';
repository: 'github://kilon/CPPBridge:master';load.

UIManager default inform: 'All libraries have been installed, have a nice day :) '.

NireasTheme installFullTheme .  "FreeTypeFontProvider current updateFromSystem."

ChronosManager open.  ] runOnce: true.

StartupAction name: 'Random Wallpaper' code: [|files path| path :='/Users/kilon/Pictures' asFileReference.
path exists ifTrue: [ files := path allChildren select:[ :each | (each basename endsWith: 'jpg') | (each basename endsWith:'png')] ].
 Smalltalk image os isMacOSX ifTrue: [World backgroundImage: (Form fromFileNamed: files atRandom fullName) layout: #scaled.].
]}]
