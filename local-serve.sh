#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

bundle exec jekyll serve --config _config.yml,_local.yml
