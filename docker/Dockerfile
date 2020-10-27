FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y live-build curl git cdebootstrap

COPY build-custom.sh /build-custom.sh

CMD ['/build-custom.sh']
