#!/usr/bin/env bash
set -euo pipefail

apt-get update && apt-get install -y wget git build-essential
wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/mc.sh
bash /tmp/mc.sh -b -p /opt/conda
rm /tmp/mc.sh
echo 'source /opt/conda/etc/profile.d/conda.sh' >> ~/.bashrc
source /opt/conda/etc/profile.d/conda.sh
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda --version

# Allow git to operate on directories owned by other users (common in Docker)
git config --global --add safe.directory '*'
