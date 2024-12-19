#!/bin/bash
set -e

microdnf install -y texlive-scheme-full
microdnf clean all

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh

