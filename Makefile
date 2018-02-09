all: handout

handout: bigfile.txt \
		executables/exec1 \
		executables/exec2 \
		magic \
		search.txt
	rm -f handout.zip
	ln -s `pwd` lesson1
	zip -r \
		lesson1/handout.zip \
		lesson1/bigfile.txt \
		lesson1/executables \
		lesson1/fruity \
		lesson1/magic \
		lesson1/forest \
		lesson1/garbage \
		lesson1/search.txt \
		lesson1/README.md
	rm lesson1
	
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

clean:
	rm -rf executables/exec1 executables/exec2 java/*.class handout.zip magic bigfile.txt forest garbage