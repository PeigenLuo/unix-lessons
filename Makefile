all: handout

handout: executables/exec1 \
	executables/exec2
	rm -f handout.zip
	zip -r handout.zip \
		executables \
		fruity

executables/exec1: source/foo1.c
	gcc -o $@ $<

executables/exec2: source/foo2.c
	gcc -o $@ $<
	chmod a-x $@
