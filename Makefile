#CROSS := rsdk-linux-
#CROSS := arm-none-linux-gnueabi-
#CROSS_ROOT := --sysroot=$(SYSROOT)
#CROSS := arm-linux-androideabi-
rm=rm -f
CC=$(CROSS)gcc $(CROSS_ROOT)

all : yuy2_to_rgb565

yuy2_to_rgb565 : convert.c
	$(CC) -o $(CROSS)convert convert.c

clean :
	$(rm) convert *.o



