all: server client

zip:
	zip binary server_before_changes.c makefile client.c server.c

server: server.o
	gcc -o server server.o -pthread

client: client.o
	gcc -o client client.o

server.o: server.c
	gcc -c server.c 

client.o: client.c
	gcc -c client.c

clean:
	rm -rf *.o server client