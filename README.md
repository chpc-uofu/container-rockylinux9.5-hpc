# Rocky Linux 9.5 HPC Test Image

[![License: Unlicense](https://img.shields.io/badge/license-Unlicense-blue.svg)](http://unlicense.org/)
[![Release](https://github.com/CHPC-UofU/container-rockylinux9.5-hpc/actions/workflows/release.yml/badge.svg)](https://github.com/CHPC-UofU/container-rockylinux9.5-hpc/actions/workflows/release.yml)

A custom container image for testing apps in HPC for the CHPC General Environment.

## Image Tags

* `latest`: Latest stable version of Rocky 9.5.

## How to Build

This image is built on GitHub automatically any time a commit is made or merged to the `main` branch and tagged. But if you need to build the image on your own locally, do the following:

1. Install [Podman](https://podman.io/getting-started/installation) or [Docker](https://docs.docker.com/get-docker/).
    * In the commands below, `podman` may be interchanged with `docker` depending on your choice.
2. `cd` into the directory containing this repository.
3. Build the image:

   ```shell
   podman build --file Containerfile --tag rockylinux9.5-hpc .   
   ```

## How to Use

1. Install [Podman](https://podman.io/getting-started/installation) or [Docker](https://docs.docker.com/get-docker/).
    * In the commands below, `podman` may be interchanged with `docker` depending on your choice.
1. Pull this image from GitHub (or use the image you built above `rockylinux9.5-hpc:latest`):

   ```shell
   podman pull ghcr.io/chpc-uofu/container-rockylinux9.5-hpc:latest
   ```
1. Run a container from the image:

   ```shell
   podman run -it ghcr.io/chpc-uofu/container-rockylinux9.5-hpc:latest
   ```

## How to Contribute

1. Submit a pull request against `main`.
1. Once the automated status checks pass, complete the pull request by squash-merging with `main`.
1. Apply a [semantic version](https://semver.org/) tag to the resulting commit (e.g. `v1.0.1`).
1. At this point the automatic image build on GitHub will trigger, tagging the new image with the semantic version and `latest`.

## Author

CHPC Staff
