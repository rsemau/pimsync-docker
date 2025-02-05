FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive
COPY files/build.sh /build.sh
RUN /build.sh
COPY files/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/local/bin/pimsync","-c","/pimsync-running.conf","-v","INFO","daemon"]

