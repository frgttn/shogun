#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Shogun locations
export SHOGUN_PATH="$HOME/.local/share/shogun"
export SHOGUN_INSTALL="$SHOGUN_PATH/install"
export PATH="$SHOGUN_PATH/bin:$PATH"

# Install
source "$SHOGUN_INSTALL/preflight/all.sh"
source "$SHOGUN_INSTALL/packaging/all.sh"
source "$SHOGUN_INSTALL/config/all.sh"
source "$SHOGUN_INSTALL/login/all.sh"
source "$SHOGUN_INSTALL/first-run/all.sh"
