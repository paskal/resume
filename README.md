[![Build Status](https://github.com/paskal/resume/workflows/build/badge.svg)](https://github.com/paskal/resume/actions/workflows/ci-build.yml) [![Update Status](https://github.com/paskal/resume/workflows/update/badge.svg)](https://github.com/paskal/resume/actions/workflows/ci-update.yml) [![Image Size](https://img.shields.io/docker/image-size/paskal/jsonresume)](https://hub.docker.com/r/paskal/jsonresume)

It's a source for [my SRE resume](https://terrty.net/cv/) build by [JSON Resume](https://jsonresume.org/) technology with [kendall theme](https://github.com/LinuxBozo/jsonresume-theme-kendall).

Make on the server:

```bash
docker compose run build
docker compose run build-pdf
cp -rT ./cv ../blog/public/cv
```
