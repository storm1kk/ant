# k8s troubleshootin toolset aka Almighty Network Toolkit

To have it in K8s:

kubectl run -it --rm --image=storm1kk/ant --restart=Never ant

in Docker:

docker run -it -h ant --rm --net host storm1kk/ant


Installed packages:

curl
wget
telnet
tshark
postgresql-client
netcat
vim
iproute2
cifs-utils
dnsutils
------
You can also know your IP by executing myip command.

root@ant:~# myip

Your IP address is 1.1.1.1
