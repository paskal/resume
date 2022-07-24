[![Build Status](https://github.com/paskal/resume/workflows/build/badge.svg)](https://github.com/paskal/resume/actions/workflows/ci-build.yml) [![Image Size](https://img.shields.io/docker/image-size/paskal/jsonresume)](https://hub.docker.com/r/paskal/jsonresume)

It's a source for [my SRE resume](https://terrty.net/cv/) build by [JSON Resume](https://jsonresume.org/) technology with [kendall theme](https://github.com/LinuxBozo/jsonresume-theme-kendall).

It's built using updated [SvenDowideit](https://github.com/SvenDowideit/dockerfiles/tree/master/jsonresume) docker container.

Docker image build and push command:

```shell
docker buildx build --platform linux/arm64,linux/amd64 -t paskal/jsonresume:latest --push .
```