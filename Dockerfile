FROM docker.io/alpine:3.22.1

# https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/
# https://gitlab.alpinelinux.org/alpine/ca-certificates/-/commits/master
# https://git.alpinelinux.org/aports/log/main/ca-certificates?h=3.22-stable
ARG CA_CERTIFICATES_PACKAGE_VERSION=20250619-r0
# http://www.dest-unreach.org/socat/
# https://git.alpinelinux.org/aports/log/main/socat?h=3.22-stable
ARG SOCAT_PACKAGE_VERSION=1.8.0.3-r1
# https://git.alpinelinux.org/aports/log/community/tini?h=3.22-stable
ARG TINI_PACKAGE_VERSION=0.19.0-r3
# obsolete in socat v2
# http://www.dest-unreach.org/socat/doc/socat-addresschain.html
# https://gitlab.torproject.org/tpo/core/torsocks/-/blob/main/ChangeLog
# https://git.alpinelinux.org/aports/log/community/torsocks?h=3.22-stable
ARG TORSOCKS_PACKAGE_VERSION=2.5.0-r0
RUN apk add --no-cache \
        socat=$SOCAT_PACKAGE_VERSION \
        socat-scripts=$SOCAT_PACKAGE_VERSION \
        tini=$TINI_PACKAGE_VERSION \
        ca-certificates=$CA_CERTIFICATES_PACKAGE_VERSION \
        torsocks=$TORSOCKS_PACKAGE_VERSION

USER nobody
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["socat", "-h"]
