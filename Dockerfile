FROM debian:bookworm

WORKDIR /root

RUN apt-get update && apt-get install -y \
  wget \
  git

RUN mkdir -p ~/miniconda3

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O ~/miniconda3/miniconda.sh \
&& bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \
&& rm ~/miniconda3/miniconda.sh

RUN git clone https://github.com/dbarnett/python-helloworld