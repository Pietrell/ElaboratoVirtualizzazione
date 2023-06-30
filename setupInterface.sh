sudo brctl addbr virbr0
sudo brctl stp virbr0 on
sudo ip addr add 192.168.122.0/24 dev virbr0 broadcast 192.168.122.255
sudo ip link set virbr0 up
sudo ip route add 192.168.122.2 via 192.168.122.2 dev virbr0

#reindirizzamento browser verso interfaccia server proxmox
