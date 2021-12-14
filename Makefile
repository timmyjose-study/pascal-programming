PAS := fpc
PASFLAGS := -O3 -Criot -gl
DEBUG := 0

ifeq ($(DEBUG), 1)
	PASFLAGS := $(PASFLAGS) -g
endif

SRC := $(wildcard *.pas)
OBJS := $(patsubst %.pas, %.o, $(SRC))
EXES := $(basename $(OBJS))

all: $(EXES)

$(EXES): %: %.pas
	$(PAS) $(PASFLAGS) $<

.PHONY: clean
clean:
	rm -f $(EXES) $(OBJS) 