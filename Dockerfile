# Docker container with metasploit.
FROM kalilinux/kali-linux-docker
MAINTAINER Cem Basoglu "cem.basoglu@web.de"

ENV DEBIAN_FRONTEND noninteractive

# Install metasploit
RUN apt-get -y update ; apt-get -y install ruby metasploit-framework
RUN msfdb init

ADD ./start.sh /start.sh

# launch metasploit
CMD /start.sh
