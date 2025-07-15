
build:
	@ghc -lm -outputdir testFiles/bin -o testFiles/bin/$(f) testFiles/src/$(f).hs
	@./testFiles/bin/$(f)