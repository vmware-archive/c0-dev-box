# Customer[0] Developer Machine

This repository has a [packer](https://www.packer.io/downloads.html) template
for creating a [Vagrant](https://www.vagrantup.com/downloads.html) box for use
with [VirtualBox](https://www.virtualbox.org/wiki/Downloads) containing some
utilities that are useful to development on Customer[0].

To create and use the VirtualBox box:

```
packer build templates/virtualbox.json
vagrant box add c0-dev-virtualbox-ubuntu-yakkety.box --name c0-dev
vagrant init c0-dev
vagrant up
vagrant ssh
```
