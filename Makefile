all: handout

handout: bigfile.txt \
		executables/exec1 \
		executables/exec2 \
		magic \
		search.txt
	rm -f handout.zip
	zip -r handout.zip \
		bigfile.txt \
		executables \
		fruity \
		magic \
		forest \
		garbage \
		search.txt \
		README.md
	
bigfile.txt:
	for x in `seq 1 1000`; do \
		echo $$x | sha256sum >> $@; \
	done

executables/exec1: source/foo1.c
	gcc -o $@ $<

executables/exec2: source/foo2.c
	gcc -o $@ $<
	chmod a-x $@

magic: source/clear.c
	gcc -o $@ $<

search.txt: forest garbage

forest:
	@./source/forest.sh

garbage:
	@./source/garbage.sh