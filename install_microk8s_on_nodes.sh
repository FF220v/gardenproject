for i in {1..6}
do
        ssh root@node${i}.cluster.io "snap install microk8s --classic"
done


