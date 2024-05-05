#!/bin/bash

nasm -f elf64 main.s
ld main.o -o main

#clean
rm -rf *.o

