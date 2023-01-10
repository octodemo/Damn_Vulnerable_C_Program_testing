#**************************************
#dman vulnerable imageReader
#Author: hardik shah
#email: hardik05@gmail.com
#website: http://hardik05.wordpress.com
#**************************************
 
TARGET=imgRead #target file name

all: gcc
.PHONY: gcc afl clean

gcc:
	gcc imgRead.c -o $(TARGET)
 
afl:
	AFL_HARDEN=1 afl-gcc -fsanitize=address -fno-omit-frame-pointer -fsanitize=undefined imgRead.c -o $(TARGET)
	     
clean:
	-rm $(TARGET)

