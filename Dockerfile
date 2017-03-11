# Docker container with metasploit.
FROM kalilinux/kali-linux-docker
MAINTAINER Cem Basoglu "cem.basoglu@web.de"

ENV DEBIAN_FRONTEND noninteractive

ADD ./start.sh /start.sh

# Install metasploit
RUN apt-get -y update ; apt-get -y install ruby metasploit-framework

# launch metasploit
CMD /start.sh
