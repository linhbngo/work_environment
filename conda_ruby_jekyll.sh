#!/bin/bash

conda create -n jekyll -c conda-forge python==3.10.2 ruby==3.1.0
conda install -c conda-forge c-compiler compilers cxx-compiler
gem install jekyll bundler

# For the SWC pages
# bundle install
# bundle add webrick
