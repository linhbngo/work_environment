#!/bin/bash
    
microdnf update -y
microdnf install -y curl nano
    
curl -fsSL https://code-server.dev/install.sh | sh
mkdir -p /root/.config/code-server/
cp /build/code-server/config.yaml /root/.config/code-server/config.yaml
mkdir -p /root/.local/share/code-server/User/ 
cp /build/code-server/settings.json /root/.local/share/code-server/User/ 

microdnf clean all
