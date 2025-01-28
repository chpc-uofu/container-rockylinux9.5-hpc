# syntax=docker/dockerfile:1
FROM docker.io/rockylinux/rockylinux:9.5

# Image build arguments:
ARG imageversion="localdev"

# Environmental variables:
ENV XXXX YYYY

# Labels
LABEL org.opencontainers.image.authors="UofU CHPC <helpdesk@chpc.utah.edu>"
LABEL org.opencontainers.image.description="A custom container image for testing apps in HPC for the CHPC General Environment."
LABEL org.opencontainers.image.licenses="Apache-2.0"
LABEL org.opencontainers.image.title="container-rockylinux9.5-hpc"
LABEL org.opencontainers.image.url="https://github.com/chpc-uofu/container-rockylinux9.5-hpc"
LABEL org.opencontainers.image.vendor="chpc.utah.edu"
LABEL org.opencontainers.image.version=${imageversion}
  

# Copy external files:
COPY ./files/dnf-packages.txt /tmp/dnf-packages.txt

# Package installs/updates:
RUN dnf -y update; \
    dnf install -y epel-release; \
    dnf clean -y all; \
    dnf -y update; \
    dnf install -y $(cat /tmp/dnf-packages.txt)

# Cleanup:
RUN rm /tmp/dnf-packages.txt
