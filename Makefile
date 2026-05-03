# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026 Bailey Harrison (baileyharrison04@outlook.com)

obj-m += ticalc.o

KVERSION ?= $(shell uname -r)

all:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
