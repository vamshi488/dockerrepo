yum install docker -y
service docker start
service docker status
docker -v
docker run -it --name container1 amazonlinux /bin/bash
docker ps -a
docker images
docker commit container1 amzimg
docker images
docker rename d52b48ba2787 dockcontain1
docker ps -a
docker run -it --name dockercont2 amzimg /bin/bash
history
docker run -it --name mycontainer -v /volume1 jenkins/jenkins /bin/bash
docker ps -a
docker rm mycontainer
docker ps -a
docker run -it --name mycontainer -v /volume1 ubuntu /bin/bash
docker ps -a
docker run --it --name thorroxx --privileged --volume-from mycontainer ubuntu /bin/bash
docker run -it --name thorroxx --privileged --volume-from mycontainer ubuntu /bin/bash
docker run -it --name thorroxx --privileged=true --volumes-from mycontainer ubuntu /bin/bash
docker ps -a
docker start mycontainer
docker attach mycontainer
ls
docker ps -a
docker attach fafa63527042
docker run -it --name lenovo -v /root:/dummyvolume ubuntu /bin/bash
ls
ls -a
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker ps -a
docker rmi -f $(docker images -q)
docker images
ls
docker run -td --name myfirstcont -p 80:80 ubuntu
docker ps -a
docker images
docker exec -it myfirstcont 
docker exec -it myfirstcont /bin/bash
docker port myfirstcont
docker ps -a
docker exec -it myfirstcont /bin/bash
