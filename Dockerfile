FROM devkitpro/devkitarm:latest

ENV DEVKITPRO=/opt/devkitpro \
    DEVKITARM=/opt/devkitpro/devkitARM \
    PATH=$PATH:$DEVKITPRO/tools/bin

RUN apt-get update && apt-get install -y \
    git build-essential clang bison flex libpng-dev python3 libtinfo-dev wget ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN git clone https://github.com/pret/agbcc.git \
    && cd agbcc \
    && ./build.sh \
    && mkdir /opt/agbcc \
    && ./install.sh /opt/agbcc

ENV AGBCC_DIR=/opt/agbcc/tools/agbcc

WORKDIR /tmp
RUN wget https://mid-kid.root.sx/stash/arm-000512.tar.xz \
    && tar -xf arm-000512.tar.xz \
    && cd arm-000512 \
    && mkdir build \
    && cd build \
    && ../configure --target=thumb-elf --host=x86_64-pc-linux-gnu --without-x --prefix=/opt/arm000512  \
    && make \
    && make install

ENV ARM000512=/opt/arm000512

CMD ["make"]