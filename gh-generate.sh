#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

bundle exec jekyll build
