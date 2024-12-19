#!/bin/bash
set -e

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xzf install-tl-unx.tar.gz 
tar xzf install-tl-unx.tar.gz 
cd install-tl-*/
perl ./install-tl --no-interaction
echo "export PATH=$PATH:/usr/local/texlive/2024/bin/x86_64-linux/" >> /etc/profile
   
code-server --install-extension james-yu.latex-workshop

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh

