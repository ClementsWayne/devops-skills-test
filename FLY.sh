#Install Docker if it is not yet installed.
#Ensure the installed version of Docker is the latest version available.
#Start a container using the image you've craeted above with your Dockerfile - this container must run as follows:
#It must be named ALFRED.
# It must mount /var/lib/mysql to the host operating system to /var/lib/mysql.
# It must mount /BATCAVE to the host operating system.
#Checks whether a container exists called ALFRED and if it does, removes an recreates it.
#Create a schema in the database called "wayneindustries" with one table in it called "fox" with columns "ID" and "Name".
#Insert an entry with ID "50" and Name "BATMOBILE".
# Not done Create an encrypted file called "secret" in the root of this repository that contains the root password of the database (the password must be "thisisadatabasepassword123456789!").
#Not Done Change your Bash script to start the conainer using the root password from the "secret" file.


#!/bin/bash

NOT_INSTALLED=\`echo \$(systemctl status docker 2>&1 || :) | grep "could not be found" || :\`
if [  ! -z "\$NOT_INSTALLED" ]; then

yum install docker

systemctl start docker

process=`docker ps | grep ALFRED | wc -l`
if [  $process==0 ]; then
docker run -v /BATCAVE --mount src=/var/lib/mysql",target=/var/lib/mysql,type=bind -other -options ALFRED
else
echo "image running"

CREATE SCHEMA wayneindustries;
mqsql wayneindustries;
CREATE TABLE `fox` (
        `id` INT,
        `name` VARCHAR(50) NULL DEFAULT '',
    ) COLLATE='utf8_bin';

INSERT INTO fox (50,'BATMOBILE');
