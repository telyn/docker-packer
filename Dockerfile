FROM debian:jessie

RUN apt-get update && apt-get install -y qemu-kvm wget git unzip

ADD https://releases.hashicorp.com/packer/0.10.1/packer_0.10.1_linux_amd64.zip ./

RUN unzip packer_0.10.1_linux_amd64.zip -d /bin

ENTRYPOINT "/bin/bash"
