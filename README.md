vpn-gateway-vm
==============

A minimal Ubuntu-based virtual machine using Vagrant for isolating
programs that require root access such as the Checkpoint SNX VPN
client.

Certain VPN clients such as Checkpoint SNX want root permissions for
establishing a connection. This is a security risk which can be
mitigated. A solution is to set up a dedicated VM through which the
connections are tunnelled.

Steps for use:
- Install vagrant and virtualbox (through apt-get or from vagrantup.com)
- Install Ansible: pip install Ansible
- Create the VM: vagrant up
- Connect to the VM through VNC: http://192.168.3.103:5800/
- Connect to the desired VPN through firefox or otherwise
- Tunnel desired connections through the VM:
    ssh -L 9022:1.2.3.4:22 vagrant@192.168.3.103
