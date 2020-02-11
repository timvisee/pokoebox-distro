FROM debian

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install coreutils quilt parted qemu-user-static debootstrap \
    zerofree zip dosfstools bsdtar libcap2-bin grep rsync xz-utils file git \
    curl bc \
 && rm -rf /var/lib/apt/lists/*

COPY . /build/

VOLUME [ "/build/pi-gen/work", "/build/pi-gen/deploy"]

CMD ["/build/pi-gen/build.sh -c /build/config"]
