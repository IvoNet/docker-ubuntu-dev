FROM ivonet/ubuntu:22.04

RUN apt-get update \
 && apt-get install --no-install-recommends -y  \
     build-essential \
     automake \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /tmp/*

CMD "gcc --version && make --version"