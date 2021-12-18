# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- `torsocks` for chaining `socat` (<v2) with socks proxy.
  last resort if application does not support socks & http proxies
  and `torsocks`/`proxychains`/... cannot be applied.
  consider transparent proxying as an alternative (requires `netfilter` rules).

## [0.1.0] - 2020-03-18
### Added
- `socat` in alpine

[Unreleased]: https://git.hammerle.me/fphammerle/docker-socat/compare/v0.1.0...HEAD
[0.1.0]: https://git.hammerle.me/fphammerle/docker-socat/src/0.1.0
