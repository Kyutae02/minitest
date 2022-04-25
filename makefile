CC = gcc
CFLAGS = -W -Wall
TARGET = market
OBJECTS =market.c product.o manager.o
all : $(TARGET)
product.o: product.c product.h
	$(CC) -c product.c 
manager.o: manager.c manager.h
	$(CC) -c manager.c  
$(TARGET) : $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

clean: 
	rm *.o market
