# k8s troubleshootin toolset aka Almighty Network Toolkit

To have it in K8s:

kubectl run -it --rm --image=storm1kk/ant --restart=Never ant

in Docker:

docker run -it -h ant --rm --net host storm1kk/ant



https://hub.docker.com/repository/docker/storm1kk/ant/general

Installed packages:

curl
wget
telnet
tshark
s3cmd
netcat
vim
------
You can also know your IP by executing myip command.

root@ant:~# myip

Your IP address is 1.1.1.1