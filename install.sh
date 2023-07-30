#!/bin/bash

# Install required packages.
apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    tzdata \
    openssh-server \
    curl \
    wget \
    git && \
    rm -rf /var/lib/apt/lists/* || exit 1;

