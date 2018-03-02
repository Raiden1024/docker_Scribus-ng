# docker_Scribus-ng
Scribus 1.5 docker container

Docker Image to launch scribus 1.5.x on différents linux platform.
Tested on CentOS 7.4. 
To use it:

Create a script in /usr/bin or /usr/local/bin with this content:

#!/bin/sh

username=\`basename $HOME\`

docker run --rm \
    -i -t \
    -v ${HOME}:/home/${USER_NAME} \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -e VHOME=${HOME} \
    --net=host \
copernic1024/scribus-ng
