NODE_NUMBER=$1
NODE_IP=$2

echo -e "Node number: $NODE_NUMBER \nNode ip: $NODE_IP"

if [ -z $NODE_NUMBER ]
then
    echo "No node number passed"
    exit 0
fi

ssh-copy-id root@${NODE_IP}

scp configure_node_network.sh root@${NODE_IP}:/configure_node_network.sh
ssh root@${NODE_IP} "cd / && sudo ./configure_node_network.sh $NODE_NUMBER"
