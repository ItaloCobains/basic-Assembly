NOME = maiorNum

all: $(NOME).o
	ld -s -o $(NOME) $(NOME).o
	rm -rf $(NOME).o

%.o: %.asm
	nasm -o $@ $<