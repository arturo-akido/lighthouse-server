#!/bin/bash -ex
source $(git rev-parse --show-toplevel)/scripts/lib/akido_lib.sh

DESTROY_FIRST=false
DEPLOY_BRANCH=${1:-master} # default to master branch but allow any branch.
# This will be the name and URL of your app. Should be short, memorable, and
# should use dashes ("-") instead of underscores ("_").
APP_NAME="lighthouse-ci"
DEPLOY_ENVIRONMENT=qa
DOKKU_USES_REDIS=false

DOKKU_HOST="qa-dokku.dev.corp.akidolabs.com"
DOKKU_CMD="ssh dokku@${DOKKU_HOST}"

git_merge_origin

dokku_destroy_first
dokku_create_app || fail

echo "Deploy completed"
