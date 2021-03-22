#!/usr/bin/env sh

export LIBVIRT_DEFAULT_URI=qemu:///system
sudo virsh start vm1
sudo virsh start vm2
sudo virsh start vm3
sudo virsh start vm4
