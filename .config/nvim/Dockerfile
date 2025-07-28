FROM ubuntu:latest

COPY ./install.sh install.sh
COPY . /root/.config/nvim

RUN ./install.sh

CMD ["echo", "You forgot to set an entrypoint silly goose!"]
