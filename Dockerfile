FROM openjdk:8u292-oraclelinux7

WORKDIR /srv/forge-rad
EXPOSE 25565

# Downloading server-files and unpacking them.
# Since its zip it cannot be unpacked by ADD
ADD https://media.forgecdn.net/files/3255/643/RAD-Serverpack-1.45.zip /tmp/RAD-Serverpack-1.45.zip
RUN unzip /tmp/RAD-Serverpack-1.45.zip && \
    rm /tmp/RAD-Serverpack-1.45.zip && \
    mv /tmp/RAD-Serverpack-1.45/* /srv/forge-rad/

#aut-accept EULA
RUN rm /srvforge-rad/eula.txt && echo "eula=true" > /srv/forge-rad/eula.txt

RUN chmod 744 /var/forge-rad/LaunchServer.sh
CMD /var/forge-rad/LaunchServer.sh