NODE_NUMBER=$1
NODE_IP=$2

if [ -n NODE_NUMBER ]
then
    echo "No node number passed"
    exit 0
fi

scp configure_node_network.sh root@${NODE_IP}:/configure_node_network.sh

ssh root@${NODE_IP} ./configure_node_network.sh $NODE_NUMBER
