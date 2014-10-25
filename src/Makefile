FCOM=gfortran

CPPFLAGS=-E
COMPFLAGS=

EXE=hello

SOURCES=sayhello.F schleppe.F schnuppi.F
MODS=words_schleppe.F words_schnuppi.F

OBJS=$(SOURCES:.F=.o)
MODOBJS=$(MODS:.F=.o)

# this may also be replaced by the ar command (creating archive)
all: $(OBJS) $(MODOBJS)
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

#########

## this works with 'use ...' commented.
## when 'use ...' un-commented, it works only when .mod files are already in place at time of 'make'.
## somehow, words_schleppe.F and words_schnuppi.F must be compiled before schleppe.F and schnuppi.F get compiled.

# FCOM=gfortran

# CPPFLAGS=-E
# COMPFLAGS=

# EXE=hello

# SOURCES=sayhello.F schleppe.F schnuppi.F words_schleppe.F words_schnuppi.F

# OBJS=$(SOURCES:.F=.o)

# # this may also be replaced by the ar command (creating archive)
# all: $(OBJS)
# 	$(FCOM) $(OBJS) -o $(EXE)

# %.for: %.F
# 	rm -f $*.for
# 	$(FCOM) $(CPPFLAGS) $*.F > $*.for

# $(OBJS): %.o: %.for
# 	$(FCOM) -c -o $@ $(COMPFLAGS) $*.for

# # clean: remove .for, .o, .do, and .stb files
# .PHONY: clean
# clean:
# 	-rm -f *.for *.o *.stb *.mod
