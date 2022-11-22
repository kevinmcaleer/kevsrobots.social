FROM balenalib/raspberry-pi-debian:latest
# install dependencies
RUN apt update
RUN apt upgrade -y

RUN ln -s /usr/lib/apt/methods/http /usr/lib/apt/methods/https

RUN apt install -y git curl wget gnupg apt-transports-https ca-certificates lsb-release sudo

RUN apt install imagemagick ffmpeg libpq-dev libxml2-dev libxslt1-dev file git-core \
  g++ libprotobuf-dev protobuf-compiler pkg-config gcc autoconf \
  bison build-essential libssl-dev libyaml-dev libreadline6-dev \
  zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev \
  nginx redis-server redis-tools postgresql postgresql-contrib \
  certbot python3-certbot-nginx libidn11-dev libicu-dev libjemalloc-dev

