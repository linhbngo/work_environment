#!/bin/bash
set -e

microdnf update -y
microdnf install -y epel-release
microdnf install -y texlive-*
microdnf clean all

code-server --install-extension james-yu.latex-workshop

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh

