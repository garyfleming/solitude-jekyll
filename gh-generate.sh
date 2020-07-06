#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

rm -rf docs/*
bundle exec jekyll build
cp -R _site/ docs/
