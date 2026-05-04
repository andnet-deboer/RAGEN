#!/usr/bin/env bash
set -euo pipefail

apt-get update && apt-get install -y wget git build-essential
wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/mc.sh
bash /tmp/mc.sh -b -p /opt/conda
rm /tmp/mc.sh
echo 'export PATH="/opt/conda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
conda --version
