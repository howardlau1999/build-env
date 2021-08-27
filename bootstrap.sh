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
ln -s /usr/local/bin/bazelisk /usr/local/bin/bazel

curl -fsSL -o /usr/local/bin/buildifier https://github.com/bazelbuild/buildtools/releases/download/4.0.1/buildifier-linux-amd64
chmod +x /usr/local/bin/buildifier

INSTALL_DIR="/usr/local/bin"
VERSION="0.4.5"

# Download and symlink.
(
  cd "${INSTALL_DIR}" \
  && curl -L "https://github.com/grailbio/bazel-compilation-database/archive/${VERSION}.tar.gz" | tar -xz \
  && ln -f -s "${INSTALL_DIR}/bazel-compilation-database-${VERSION}/generate.sh" bazel-compdb
)
