FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils live-build curl git cdebootstrap fdisk fakeroot

RUN sed -i '1161s%umount%#umount%' /usr/share/debootstrap/functions

COPY build-custom.sh /build-custom.sh

RUN chmod +x /build-custom.sh

WORKDIR /tmp

CMD '/build-custom.sh'
