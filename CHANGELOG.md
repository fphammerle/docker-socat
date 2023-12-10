# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.1.0] - 2023-12-10
### Added
- `socat-scripts` package including scripts introduced in socat v1.8.0.0
   (`socat-chain.sh`, `socat-mux.sh` & `socat-broker.sh`)

## [1.0.0] - 2021-12-19
### Changed
- removed `socat` from image's entry point.
  requires prefixing `socat` to all commands.

### Added
- `torsocks` for chaining `socat` (<v2) with socks proxy.
  last resort if application does not support socks & http proxies
  and `torsocks`/`proxychains`/... cannot be applied.
  consider transparent proxying as an alternative (requires `netfilter` rules).

## [0.1.0] - 2020-03-18
### Added
- `socat` in alpine

[Unreleased]: https://github.com/fphammerle/docker-socat/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/fphammerle/docker-socat/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/fphammerle/docker-socat/compare/v0.1.0...v1.0.0
[0.1.0]: https://github.com/fphammerle/docker-socat/tree/v0.1.0
