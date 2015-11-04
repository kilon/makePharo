Ephestos/Ephestos.image:
	mkdir Ephestos
	cd Ephestos; wget -O- get.pharo.org/50+vmLatest | bash
	mv Ephestos/Pharo.image Ephestos/Ephestos.image
	Ephestos/pharo Ephestos/Ephestos.image --no-default-preferences eval --save  Gofer new url: \'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main\'\; configurationOf: \'Nireas\'\; loadStable
	Ephestos/pharo Ephestos/Ephestos.image --no-default-preferences eval --save  Gofer new url: \'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main\'\; configurationOf: \'Ephestos\'\; loadStable
	Ephestos/pharo Ephestos/Ephestos.image --no-default-preferences eval --save  Gofer new url: \'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main\'\; configurationOf: \'IconFactory\'\; loadStable
	Ephestos/pharo Ephestos/Ephestos.image --no-default-preferences eval --save  Gofer new url: \'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main\'\; configurationOf: \'ChronosManager\'\; loadStable
	Ephestos/pharo Ephestos/Ephestos.image eval --save FreeTypeFontProvider current updateFromSystem.


clean:
	rm -rf Ephestos/

run: Ephestos/Ephestos.image
	Ephestos/pharo-ui  Ephestos/Ephestos.image
