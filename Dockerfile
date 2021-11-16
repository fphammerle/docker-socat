FROM alpine:3.14.2

ARG SOCAT_PACKAGE_VERSION=1.7.4.1-r1
ARG TINI_PACKAGE_VERSION=0.19.0-r0
RUN apk add --no-cache \
        socat=$SOCAT_PACKAGE_VERSION \
        tini=$TINI_PACKAGE_VERSION

USER nobody
ENTRYPOINT ["/sbin/tini", "--", "socat"]
CMD ["-h"]
