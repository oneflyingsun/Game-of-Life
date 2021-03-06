CC      =g++
SIGN    =-O2 -std=c++0x -fopenmp
OBJS    =game.o bmp.o plane.o
NAME    =game.out
$(NAME):$(OBJS)
	$(CC) $(SIGN) $(OBJS) -o $(NAME)
game.o:game.cpp
	$(CC) $(SIGN) -c game.cpp
bmp.o:src/bmp.h src/bmp.cpp
	$(CC) $(SIGN) -c src/bmp.cpp
plane.o:src/plane.h src/plane.cpp
	$(CC) $(SIGN) -c src/plane.cpp
.PHONY: clean
clean:
	rm -f $(OBJS)