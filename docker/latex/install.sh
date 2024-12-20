#!/bin/bash
set -e

microdnf update -y
microdnf install -y perl
microdnf clean all

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xzf install-tl-unx.tar.gz 
tar xzf install-tl-unx.tar.gz 
cd install-tl-*/
perl ./install-tl --no-interaction
TARGET_ARCH=$(uname -m)
echo "export PATH=$PATH:/usr/local/texlive/2024/bin/${TARGET_ARCH}-linux/" >> /etc/profile
   
code-server --install-extension james-yu.latex-workshop

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh

