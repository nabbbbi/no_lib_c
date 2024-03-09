#!/bin/bash
as start.s -o start.o
as calls.s -o calls.o
gcc -c greet.c -o greet.o
ld start.o calls.o greet.o -o greet
