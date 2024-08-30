FROM debian
LABEL org.opencontainers.image.source=https://github.com/lion7/dpkg-buildpackage

RUN apt-get update
RUN apt-get install build-essential debhelper -y
RUN mkdir /package

COPY run.sh /run.sh
RUN chmod u+x /run.sh

CMD ["-us", "-uc"]
ENTRYPOINT ["./run.sh"]
