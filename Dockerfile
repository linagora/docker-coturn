FROM debian:stretch-slim

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.4.0/s6-overlay-amd64.tar.gz /tmp/s6-overlay.tar.gz

RUN apt-get update && apt-get install -y \
    coturn iproute2 \
  && rm -rf /var/lib/apt/lists/*

COPY rootfs/ /

RUN \
	tar xfz /tmp/s6-overlay.tar.gz -C / && \
	rm -f /tmp/*.tar.gz

EXPOSE 3478

ENTRYPOINT [ "/init" ]
