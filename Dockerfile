FROM kalilinux/kali-linux-docker
MAINTAINER diguo@foxmail.com

RUN apt-get update && apt-get install -y ssh
RUN /usr/sbin/sshd && echo "sshd started" || echo "sshd failed"
EXPOSE 22

CMD ["/bin/bash"]
