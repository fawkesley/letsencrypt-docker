FROM ubuntu:14.04

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/letsencrypt/letsencrypt.git /opt/letsencrypt

# letsencrypt-auto downloads a load of depedencies on first (and subsequent)
# runs, so we bake these into the image.
RUN /opt/letsencrypt/letsencrypt-auto -h


ADD ./letsencrypt-update-certificate /root/letsencrypt-update-certificate

