#!/bin/bash
set -e

microdnf install -y texlive-scheme-full
microdnf clean all
