FROM --platform=linux/arm64 ubuntu:22.04

RUN apt update && apt upgrade -y

RUN apt install -y systemd systemd-cron sudo kmod socat conntrack ipset \
ca-certificates openssh-client wget curl iptables gnupg lsb-release && apt clean -y

RUN apt update && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt update && apt install -y docker-ce docker-ce-cli containerd.io

STOPSIGNAL SIGRTMIN+3

ENV container=docker

VOLUME ["/var/lib/docker"]

ENTRYPOINT ["/sbin/init"]
