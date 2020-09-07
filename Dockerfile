FROM mariadb:latest
EXPOSE 3307
ARG BRUCE='WAYNE'
echo $BRUCE > /root/BATCAVE
