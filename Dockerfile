FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl && \
    apt update && \
    apt install -y \ 
        git \
        sudo \
        xz-utils \
        build-essential \ 
        unzip \ 
        libncurses-dev
        
# COPY . /root/temp

# RUN chmod +x /root/temp/install/*

# WORKDIR /root/temp

CMD ["bash", "-c", "bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/bootstrap.sh); /bin/bash"]

