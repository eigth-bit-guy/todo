#!/bin/bash
echo "compiling..."

nasm -f elf64 main.s
ld main.o -o main
echo "compilation finished and link too"

echo "removing object file(s)"
#clean
rm -rf *.o

echo "Ok"
