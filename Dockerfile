FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl && \
    apt update && \
    apt install -y \ 
        git \
        sudo \
        xz-utils \
        build-essential \ 
        libncurses-dev
        
COPY ./install/nvim.sh /root/nvim.sh
RUN /root/nvim.sh 
  
CMD ["bash", "-c", "/bin/bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/bootstrap.sh)"]

