sudo brctl addbr virbr0
sudo brctl stp virbr0 on
sudo ip address add 192.168.10.1 dev virbr0 broadcast 192.168.122.255
sudo ip link set virbr0 up

#reindirizzamento browser verso interfaccia server proxmox
sudo ip addr add 192.168.122.1/24 dev virbr0 broadcast 192.168.122.255
sudo ip addr add 192.168.122.2/24 dev virbr0 broadcast 192.168.122.255
