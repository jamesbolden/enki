BIN=bin
INCLUDE=include
SRC=src
CC=gcc
CXX=g++

STD_FLAGS=-std=gnu++2a -I$(INCLUDE)
OPT_FLAGS=-flto
LINK_FLAGS=$(OPT_FLAGS)
CXXFLAGS=$(STD_FLAGS) $(OPT_FLAGS)

EXE=$(BIN)/enki
OBJS=$(BIN)/main.o

all: STD_FLAGS+=-fpermissive
all: OPT_FLAGS+=-Ofast
all: $(EXE)

debug: OPT_FLAGS+=-Og
debug: $(EXE)

$(EXE): $(OBJS)
	$(CXX) $(LINK_FLAGS) $^ -o $@

$(BIN)/%.o: $(SRC)/%.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm $(OBJS)

distclean:
	rm $(EXE) $(OBJS)

.PHONY: clean distclean