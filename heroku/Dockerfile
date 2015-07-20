FROM ubuntu:15.04

ADD install-ubuntu.sh /home/
RUN chmod +x /home/install-ubuntu.sh

RUN apt-get install -y \
   wget \
   git

RUN /home/install-ubuntu.sh
