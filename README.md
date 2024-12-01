# Temporary Docker Container

## Quick Start

- Run from Docker Hub: `docker run -it --rm -v <data-directory-path>:/data dockmann/tmp:latest`
- Run from script: `sh run-it.sh <data-directory-path>`

**NOTE:** If you do not pass a `<data-directory-path>` then the container will be started with a `data` directory in the current directory.

## Description

This builds and runs a docker image and starts a `bash` shell. The intention is to use this as a temporary container for that leaves no traces on the host machine. **The only shared volume is the `data` directory which will be preserved between runs.**

Image includes with:
- Python 3.11 base image
- `gpg`
- editors
    - `vim`
    - `micro` (https://micro-editor.github.io/)

Mount a local `data` directory to `/data`.

## Setup

Requires `docker` to be installed.
- [Install Docker Engine](https://docs.docker.com/engine/install/)
