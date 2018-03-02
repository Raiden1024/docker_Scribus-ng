#!/bin/bash

USER_NAME=`basename $VHOME`
HOME_NAME=`dirname $VHOME`

USER_ID=`ls -lahn $HOME_NAME | grep $USER_NAME | awk {'print $3'}`
GROUP_ID=`ls -lahn $HOME_NAME | grep $USER_NAME | awk {'print $4'}`

groupadd -g $GROUP_ID scribus
useradd --shell /bin/bash --uid $USER_ID --gid $GROUP_ID $USER_NAME
su $USER_NAME -c "/usr/bin/scribus-ng"
