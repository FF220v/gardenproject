ssh-keygen -b 2048 -t rsa -q
for i in {1..6}; do ssh-copy-id root@node${i}.cluster.io; done