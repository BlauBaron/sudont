build:
	ghc -o sudont.hs sudont

install: build
	install -m 777 sudont /usr/bin

all: build install


clean:
	rm -rf *.o *.hi sudont