FROM ubuntu:24.04

RUN apt update && \
apt upgrade -y && \
apt install -y curl \
gnupg && \
curl https://download.opensuse.org/repositories/home:/munix9:/unstable/Ubuntu_24.04/Release.key | apt-key add - && \
echo "deb https://download.opensuse.org/repositories/home:/munix9:/unstable/Ubuntu_24.04/ ./" | tee /etc/apt/sources.list.d/celestia-obs.list && \
apt update && \
export DEBIAN_FRONTEND=noninteractive && \ 
apt install celestia -y 
