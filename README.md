[![Build Status](https://github.com/paskal/resume/workflows/build/badge.svg)](https://github.com/paskal/resume/actions/workflows/ci-build.yml) [![Update Status](https://github.com/paskal/resume/workflows/update/badge.svg)](https://github.com/paskal/resume/actions/workflows/ci-update.yml) [![Image Size](https://img.shields.io/docker/image-size/paskal/jsonresume)](https://hub.docker.com/r/paskal/jsonresume)

It's a source for [my SRE resume](https://terrty.net/cv/) build by [JSON Resume](https://jsonresume.org/) technology with [kendall theme](https://github.com/LinuxBozo/jsonresume-theme-kendall).

## Deployment

HTML is auto-deployed via webhook when pushing to master. PDF generation requires local deployment due to amd64-only Docker image (`pink33n/html-to-pdf`).

### Local deployment (HTML + PDF)

```bash
./deploy.sh
```

This generates both HTML and PDF, then uploads to the server via rsync.

### Server-only (HTML)

```bash
docker compose run --rm build
```
