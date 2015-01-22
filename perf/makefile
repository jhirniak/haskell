SHELL :=/bin/bash
FILES = sumI sumIA sumIS
.PHONY: clean

eval: clean exec
	
exec: $(FILES)
	for P in $^; do \
	  echo "Running $$P..."; \
	  ./$$P +RTS -k100000000 -sstderr; \
	done

$(FILES):
	ghc $@.hs -rtsopts

clean:
	rm -rf $(FILES) *.hi *.o
