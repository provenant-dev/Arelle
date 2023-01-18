FROM provenant-dev/arelle:base

WORKDIR /usr/local/var/
RUN git clone https://github.com/provenant-dev/ixbrl-viewer

WORKDIR /build

ENTRYPOINT ["python3"]
