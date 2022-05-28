FROM docker.io/alpine:3.16.0

# https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/
ARG CA_CERTIFICATES_PACKAGE_VERSION=20211220-r0
ARG SOCAT_PACKAGE_VERSION=1.7.4.3-r0
ARG TINI_PACKAGE_VERSION=0.19.0-r0
# obsolete in socat v2
# http://www.dest-unreach.org/socat/doc/socat-addresschain.html
ARG TORSOCKS_PACKAGE_VERSION=2.3.0-r2
RUN apk add --no-cache \
        socat=$SOCAT_PACKAGE_VERSION \
        tini=$TINI_PACKAGE_VERSION \
        ca-certificates=$CA_CERTIFICATES_PACKAGE_VERSION \
        torsocks=$TORSOCKS_PACKAGE_VERSION

USER nobody
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["socat", "-h"]
