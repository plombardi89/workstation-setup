#!/usr/bin/env bash
set -euxo pipefail

rm -rf ${HOME}/venv/py2

sudo -s dnf install -y \
  libffi-devel \
  libselinux-python \
  openssl-devel \
  python-devel \
  python-pip \
  python-dnf \
  redhat-rpm-config \
  "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
  "https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

sudo -s dnf config-manager \
    --add-repo \
    https://docs.docker.com/engine/installation/linux/repo_files/fedora/docker.repo

sudo -s pip install -U pip virtualenv

# Use --system-site-packages because we need python2-dnf which is installed to the
# global system packages by dnf.
virtualenv --system-site-packages ${HOME}/venv/py2
${HOME}/venv/py2/bin/pip install -Ur bootstrap-requirements.txt
