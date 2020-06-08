
for i in {1..6}
do
        ssh root@node${i}.cluster.io "apt-get install snap"
done


