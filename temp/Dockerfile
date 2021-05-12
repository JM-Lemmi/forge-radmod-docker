# First stage: downloading zip, unzipping
FROM kubeless/unzip:latest AS builder

WORKDIR /tmp/

# Downloading server-files and unpacking them.
# Since its zip it cannot be unpacked by ADD
ADD https://media.forgecdn.net/files/3255/643/RAD-Serverpack-1.45.zip RAD-Serverpack-1.45.zip
RUN unzip RAD-Serverpack-1.45.zip

CMD /bin/bash