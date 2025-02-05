FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive
COPY files/build.sh /build.sh
RUN /build.sh
CMD ["/usr/local/bin/pimsync","-c","/pimsync.conf","-v","INFO","daemon"]

