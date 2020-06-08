NODE_NUMBER=$1

if [ -z $NODE_NUMBER ]
then
    echo "[configure_node_network.sh] No node number passed"
    exit 0
fi

IFACE_CONFIG="\
source /etc/network/interfaces.d/* \n \
auto lo \n \
iface lo inet loopback \n \
auto eth0 \n \
 iface eth0 inet static \n \
     address 10.0.0.$((NODE_NUMBER + 1)) \n \
     netmask 255.255.255.0 \n \
     gateway 10.0.0.1 \n \
     dns-nameservers 10.0.0.1"

DNS_CONFIG="nameserver 10.0.0.1" 

echo $DNS_CONFIG > /etc/resolv.conf 
echo $IFACE_CONFIG > /etc/network/interfaces 
hostnamectl set-hostname node${NODE_NUMBER}

