.PATH: ${.CURDIR}

KMOD=	if_vtnet
SRCS=	if_vtnet.c
SRCS+=	virtio_bus_if.h virtio_if.h
SRCS+=	bus_if.h device_if.h 

MFILES=	kern/bus_if.m kern/device_if.m \
	dev/virtual/virtio/virtio/virtio_bus_if.m dev/virtual/virtio/virtio/virtio_if.m

.include <bsd.kmod.mk>
