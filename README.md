# ushare-docker

## Overview

This docker image contains [uShare](https://ushare.geexbox.org/).

## Entrypoint Scripts

None.

## Healthcheck Scripts

None.

## Standard Configuration

### Container Layout

```
/
├─ etc/
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

