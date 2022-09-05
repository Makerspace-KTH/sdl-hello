# Location of where hello.c is stored in
SRCDIR=./src

# Name of the compiler, GNU GCC in this case
CC=gcc-12

# Any include directories
INCLUDE = /opt/homebrew/include

# Any flags for the compiler
CFLAGS = -g -I$(INCLUDE) -c
#CFLAGS = -g -c

# Any libraries to link with
LIBS = /opt/homebrew/lib

# Extra flags to give to compilers when they are supposed to invoke the linker
#LDFLAGS = -lmingw32 -lSDL2main -lSDL2 -mwindows
LDFLAGS = -lSDL2main -lSDL2

hello:
	@echo "Building Hello"
	$(CC) $(CFLAGS) $(SRCDIR)/hello.c -o $@.o 
	$(CC) hello.o -o hello $(LDFLAGS) -L $(LIBS)

clean:
	rm -f hello
