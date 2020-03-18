FROM alpine:3.11

ARG SOCAT_PACKAGE_VERSION=1.7.3.3-r1
ARG TINI_PACKAGE_VERSION=0.18.0-r0
RUN apk add --no-cache \
        socat=$SOCAT_PACKAGE_VERSION \
        tini=$TINI_PACKAGE_VERSION

ENTRYPOINT ["/sbin/tini", "--", "socat"]
CMD ["-h"]
