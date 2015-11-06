Ephestos/Ephestos.image:
	mkdir Ephestos
	cd Ephestos; wget -O- get.pharo.org/alpha+vmLatest | bash
	mv Ephestos/Pharo.image Ephestos/Ephestos.image
	Ephestos/pharo Ephestos/Ephestos.image get Nireas Ephestos IconFactory ChronosManager
	Ephestos/pharo Ephestos/Ephestos.image eval --save FreeTypeFontProvider current updateFromSystem.


clean:
	rm -rf Ephestos/

run: Ephestos/Ephestos.image
	Ephestos/pharo-ui  Ephestos/Ephestos.image
