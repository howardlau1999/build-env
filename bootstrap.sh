#!/bin/bash

set -xe

echo "Installing packages..."

apt install $1 \
  pylint \
  pylint3 \
  cabal-install \
  libcgroup-dev \
  clang \
  libclang-dev \
  libcurl4-openssl-dev \
  curl \
  make \
  xz-utils \
  python3 \
  python3-pip \
  libboost-all-dev \
  cmake \
  libmysqlclient-dev \
  libseccomp-dev \
  librabbitmq-dev \
  ninja-build \
  git \
  pkg-config \
  build-essential

echo "Installing Bazel..."

curl -fsSL -o /usr/local/bin/bazelisk https://github.com/bazelbuild/bazelisk/releases/download/v1.10.1/bazelisk-linux-amd64
chmod +x /usr/local/bin/bazelisk
bazelisk
