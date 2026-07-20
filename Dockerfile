FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  make \
  openssl \
  gcc \
  bsdmainutils \
  wget \
  dos2unix

RUN mkdir /build && \
    wget -qO- https://github.com/rhboot/shim/releases/download/16.1/shim-16.1.tar.bz2 | \
    tar -xj -C /build
COPY sbat.baramundi.csv /build/shim-16.1/data/
COPY cert.der shimx64.efi shimia32.efi /build/

WORKDIR /build
RUN cp -r shim-16.1 shim-16.1-x64 && \
    mv shim-16.1 shim-16.1-x86

RUN make -C shim-16.1-x64 CC=gcc ARCH=x86_64 EFIDIR=/usr/lib DEFAULT_LOADER=grub2_x64.efi VENDOR_CERT_FILE=/build/cert.der
RUN make -C shim-16.1-x86 CC=gcc ARCH=ia32 EFIDIR=/usr/lib32 DEFAULT_LOADER=grub2_x86.efi VENDOR_CERT_FILE=/build/cert.der

RUN sha256sum shim-16.1-x64/shimx64.efi shimx64.efi shim-16.1-x86/shimia32.efi shimia32.efi
