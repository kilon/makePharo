Ephestos/Ephestos.image:
	mkdir Ephestos
	cd Ephestos; wget -O- get.pharo.org/50+vm | bash
	mv Ephestos/Pharo.image Ephestos/Ephestos.image
	Ephestos/pharo Ephestos/Ephestos.image get Nireas
	Ephestos/pharo Ephestos/Ephestos.image get IconFactory
	Ephestos/pharo Ephestos/Ephestos.image get ChronosManager
	Ephestos/pharo Ephestos/Ephestos.image get GitFileTree
	Ephestos/pharo Ephestos/Ephestos.image get CommandShell
	#Ephestos/pharo Ephestos/Ephestos.image eval --save FreeTypeFontProvider current updateFromSystem.
	#Ephestos/pharo Ephestos/Ephestos.image --no-default-preferences eval --save Metacello new baseline: 'Ephestos'; repository: 'github://kilon/Ephestos'; load


clean:
	rm -rf Ephestos/

run: Ephestos/Ephestos.image
	Ephestos/pharo-ui  Ephestos/Ephestos.image
