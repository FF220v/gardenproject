for i in {1..6} 
do 
	ssh-copy-id root@node${i}.cluster.io
done
