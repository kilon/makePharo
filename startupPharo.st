 (SmalltalkImage current shortImageName includesSubstring: 'Ephestos') ifTrue: [



StartupPreferencesLoader default executeAtomicItems: {
	StartupAction name: 'Load dependencies' code: [


UIManager default inform: 'Installing IconFactory. Please wait....'.
Metacello new configuration:'IconFactory'; version: #stable; smalltalkhubUser: 'peteruhnak' project:'IconFactory';  load.

UIManager default inform: 'Installing ChronosManager.Please wait...'.
Metacello new baseline: 'ChronosManager' ; repository: 'github://kilon/ChronosManager:master';load.

UIManager default inform: 'Installing Nireas. Please wait...'.
Metacello new baseline: 'Nireas' ; repository: 'github://kilon/Nireas:master';load.Transcript show:' done ';cr;cr.

UIManager default inform:'Installing Ephestos. Please wait...'.
Metacello new baseline: 'Ephestos'; repository: 'github://kilon/Ephestos:master';load.


UIManager default inform: 'All libraries have been installed, have a nice day :) '.

NireasTheme installFullTheme .
ChronosManager open.
] runOnce: true.

"	StartupAction name: 'Open Workspace' code: [ Workspace openContents: 'I should be displayed each time' ]."
}]
