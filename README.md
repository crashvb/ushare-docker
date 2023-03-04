# ushare-docker

[![version)](https://img.shields.io/docker/v/crashvb/ushare/latest)](https://hub.docker.com/repository/docker/crashvb/ushare)
[![image size](https://img.shields.io/docker/image-size/crashvb/ushare/latest)](https://hub.docker.com/repository/docker/crashvb/ushare)
[![linting](https://img.shields.io/badge/linting-hadolint-yellow)](https://github.com/hadolint/hadolint)
[![license](https://img.shields.io/github/license/crashvb/ushare-docker.svg)](https://github.com/crashvb/ushare-docker/blob/master/LICENSE.md)

## Overview

This docker image contains [uShare](https://ushare.geexbox.org/).

## Entrypoint Scripts

None.

## Standard Configuration

### Container Layout

```
/
├─ etc/
│  ├─ healthcheck.d/
│  │  └─ ushare
│  └─ supervisor/
│     └─ config.d/
│        └─ ushare.conf
└─ media/
```

### Exposed Ports

* `49200/tcp` - ushare web interface.

### Volumes

* `/media` - ushare share directory.

## Development

[Source Control](https://github.com/crashvb/ushare-docker)

