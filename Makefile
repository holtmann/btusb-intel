
obj-m += btusb.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

ccflags-y := -D__CHECK_ENDIAN__

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD)

clean:
	rm -f */*.o */.*.o.d */.*.o.cmd
	rm -f *.o .*.cmd *.ko *.mod.c
	rm -f Module.symvers modules.order
	rm -rf .tmp_versions
