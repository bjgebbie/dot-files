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
        
RUN useradd -m -s /bin/ myuser && \
    passwd -d myuser && \
    usermod -aG sudo myuser

USER myuser

COPY ./install/nvim.sh /home/myuser/nvim.sh
 
CMD  -c "bash <(curl -fsSL https://raw.githubusercontent.com/bjgebbie/dot-files/refs/heads/master/bootstrap.sh)"
