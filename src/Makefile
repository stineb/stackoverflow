FCOM=gfortran

CPPFLAGS=-E
COMPFLAGS=

EXE=hello

SOURCES=sayhello.F schleppe.F schnuppi.F
MODS=words_schleppe.F words_schnuppi.F

OBJS=$(SOURCES:.F=.o)
MODOBJS=$(MODS:.F=.o)

# this may also be replaced by the ar command (creating archive)
all: $(MODOBJS) $(OBJS)
	$(FCOM) $(OBJS) $(MODOBJS) -o $(EXE)

%.for: %.F
	rm -f $*.for
	$(FCOM) $(CPPFLAGS) $*.F > $*.for

$(MODOBJS): %.o: %.for
	$(FCOM) -c -o $@ $(COMPFLAGS) $*.for

$(OBJS): %.o: %.for
	$(FCOM) -c -o $@ $(COMPFLAGS) $*.for

# clean: remove .for, .o, .do, and .stb files
.PHONY: clean
clean:
	-rm -f *.for *.o *.stb *.mod

