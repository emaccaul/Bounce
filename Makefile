# Rules for building 'bounce' program.

APP_NAME = bounce
OBJ = bounce.o
CFLAGS = -Wall -pedantic

all: $(OBJ)
	$(CC) $(LDFLAGS) -o $(APP_NAME) $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

.PHONY: clean
clean:
	$(RM) *.o $(APP_NAME)
