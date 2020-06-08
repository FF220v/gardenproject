NODE_NUMBER=$1

if [ -n NODE_NUMBER ]
then
    echo "No node number passed"
    exit 0
fi

git clone https://github.com/FF220v/gardenproject.git gardenproject
cd gardenproject
./configure_node_network.sh
