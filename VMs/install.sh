#!/usr/bin/env sh

VM=$1

qemu-img create -f qcow2 ~/virt-images/disk${VM}.img 10G

export LIBVIRT_DEFAULT_URI=qemu:///system

virt-install --name vm${VM} \
	     --memory 2048 \
	     --disk ~/virt-images/disk${VM}.img \
	     --cdrom ~/Téléchargements/rhel-8.3-x86_64-boot.iso \
	     --vcpus 2 \
	     --network network=default,model=virtio
