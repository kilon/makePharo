
Ephestos/Ephestos.image:
	mkdir Ephestos
	cd Ephestos; wget -O- get.pharo.org/alpha+vmLatest | bash
	Ephestos/pharo-ui  Ephestos/Pharo.image

clean:
	rm -rf Ephestos/

run: Ephestos/Ephestos.image
	Ephestos/pharo-ui  Ephestos/Ephestos.image
