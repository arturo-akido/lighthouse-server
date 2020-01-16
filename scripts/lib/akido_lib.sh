#!/bin/bash
GIT_ROOT_DIR=$(git rev-parse --show-toplevel)
GIT_PROJECT_NAME=$(basename -s .git $(git config --get remote.origin.url))
AKIDO_SCRIPT_NAME=$(basename ${0} 2>/dev/null || echo shell)

cd ${GIT_ROOT_DIR}

source ~/akido/akido-tools/deploy_scripts_lib/akido_lib.sh
