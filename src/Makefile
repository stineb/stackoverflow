FCOM=pgf90
CPPFLAGS=-E
COMPFLAGS=-Mextend
EXE=hello
SOURCES=sayhello.F schleppe.F schnuppi.F 
# MODS=words_schleppe.mod.F words_shnuppi.mod.F
OBJS=$(SOURCES:.F=.o)

all: $(OBJS)
	# this may also be replaced by the ar command (creating archive)
	$(FCOM) $(OBJS) -o $(EXE)

%.for: %.F
	rm -f $*.for
	$(FCOM) $(CPPFLAGS) $*.F > $*.for

$(OBJS): %.o: %.for
	$(FCOM) -c -o $@ $(COMPFLAGS) $*.for

# don't delete the intermediate *.for files
.SECONDARY:     $(SOURCES:.F=.for)

# clean: remove .for, .o, .do, and .stb files
.PHONY: clean
clean:
	-rm -f *.for *.o *.stb

