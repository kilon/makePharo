Ephestos/Ephestos.image:
	mkdir Ephestos
	cd Ephestos; wget -O- get.pharo.org/alpha+vmLatest | bash
	mv Ephestos/Pharo.image Ephestos/Ephestos.image
	Ephestos/pharo-ui  Ephestos/Ephestos.image

clean:
	rm -rf Ephestos/

run: Ephestos/Ephestos.image
	Ephestos/pharo-ui  Ephestos/Ephestos.image

pharo-stable:
	mkdir pharo-stable
	cd pharo-stable; wget -O- get.pharo.org | bash
	pharo-stable/pharo-ui  pharo-stable/Pharo.image

pharo-alpha:
	mkdir pharo-alpha
	cd pharo-alpha; wget -O- get.pharo.org/alpha+vmLatest | bash
	pharo-alpha/pharo-ui  pharo-alpha/Pharo.image

clean-pharo-stable:
	rm -rf pharo-stable/

clean-pharo-alpha:
	rm -rf pharo-alpha/
