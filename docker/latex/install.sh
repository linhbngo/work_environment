#!/bin/bash
set -e

microdnf update -y
microdnf install -y epel-release
microdnf install -y texlive-*
microdnf clean all

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh

