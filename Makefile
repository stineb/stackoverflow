FCOM=pgf95
CPPFLAGS=-E
COMPFLAGS=

# name of executable
EXE = hello

ARCHIVES= ./src/hello.a
# ARLPJ= ./lpj/lpj.a (archive names when compiling with different option)

# Export variables that are needed by Makefiles in the subdirectories (called below)
export FCOM CPPFLAGS COMPFLAGS DEBUGFLAGS #LIBS

# Targets
# -------
standard: 
	 $(MAKE) -C src
	 $(FCOM) -o $(EXE) $(COMPFLAGS) $(ARCHIVES)
#  include libraries when necessary
#	 $(FCOM) -o $(EXE) $(COMPFLAGS) $(ARCHIVES) $(LIBS)

# clean: remove exe and .o and .do files
.PHONY: clean
clean:
	$(MAKE) clean -C src
# include libraries when necessary
#	$(MAKE) clean -C lpj/cdfcode

#EOF
