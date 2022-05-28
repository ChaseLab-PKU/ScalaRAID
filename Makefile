LINUXROOT=/lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	make -C $(LINUXROOT) M=$(PWD) modules
clean:
	rm -rf *.o *.cmd *.ko *.mod.c *.tmp_versions

obj-m += raid1.o
obj-m += raid10.o
obj-m += raid456.o
obj-m += md-mod.o

dm-mod-objs	:= dm.o dm-table.o dm-target.o dm-linear.o dm-stripe.o \
		   dm-ioctl.o dm-io.o dm-kcopyd.o dm-sysfs.o dm-stats.o \
		   dm-rq.o
dm-multipath-objs	:= dm-path-selector.o dm-mpath.o
dm-historical-service-time-objs := dm-ps-historical-service-time.o
dm-io-affinity-objs := dm-ps-io-affinity.o
dm-queue-length-objs := dm-ps-queue-length.o
dm-round-robin-objs := dm-ps-round-robin.o
dm-service-time-objs := dm-ps-service-time.o
dm-snapshot-objs	:= dm-snap.o dm-exception-store.o dm-snap-transient.o \
		    dm-snap-persistent.o
dm-mirror-objs	:= dm-raid1.o
dm-log-userspace-objs := dm-log-userspace-base.o dm-log-userspace-transfer.o
dm-bio-prison-objs := dm-bio-prison-v1.o dm-bio-prison-v2.o
dm-thin-pool-objs	:= dm-thin.o dm-thin-metadata.o
dm-cache-objs	:= dm-cache-target.o dm-cache-metadata.o dm-cache-policy.o \
		    dm-cache-background-tracker.o
dm-cache-smq-objs	:= dm-cache-policy-smq.o
dm-ebs-objs	:= dm-ebs-target.o
dm-era-objs	:= dm-era-target.o
dm-clone-objs	:= dm-clone-target.o dm-clone-metadata.o
dm-verity-objs	:= dm-verity-target.o
dm-zoned-objs	:= dm-zoned-target.o dm-zoned-metadata.o dm-zoned-reclaim.o

md-mod-objs	:= md.o md-bitmap.o
raid456-objs	:= raid5.o raid5-cache.o raid5-ppl.o
linear-objs	:= md-linear.o
multipath-objs	:= md-multipath.o
faulty-objs	:= md-faulty.o

