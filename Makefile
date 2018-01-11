export GZIP=-9

all:
	ls -1 | grep -Ee ".hmod$$"| while read hmod; do \
	  $(MAKE) "out/$$hmod"; \
	done

out/%.hmod:
	mkdir -p out/
	name="`basename $@`"; \
	cd "$$name"; \
	tar -czvf "../out/$$name" *
	touch "$@"

clean:
	-rm -rf out
