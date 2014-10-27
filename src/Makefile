
SOURCES=sayhello.F schleppe.F schnuppi.F
MODS=words_schleppe.F words_schnuppi.F

DEPEND=Makefile ../Makefile 


OBJS=$(SOURCES:.F=.o)
MODOBJS=$(MODS:.F=.o)

# Archive file names
ARCHIVE=hello.a


# Export variables that are needed by Makefiles in the subdirectories (called below)
export FCOM CPPFLAGS COMPFLAGS



# this may also be replaced by the ar command (creating archive)
all: $(MODOBJS) $(OBJS)
	# $(FCOM) $(OBJS) $(MODOBJS) -o $(EXE)
	-rm $(ARCHIVE)
	ar r $(ARCHIVE) $(MODOBJS) $(OBJS) 











%.for: %.F $(DEPEND)
	echo 'doing: $(FCOM) $(CPPFLAGS) $*.F'
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

