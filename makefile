CC = gcc
market: market.c manager.o product.o
	$(CC) -o $@ $^
manager.o: manager.c manager.h
	$(CC) -c manager.c -o $@
product.o: product.c product.h
	$(CC) -c product.c -o $@
clean:
	rm *.o market

