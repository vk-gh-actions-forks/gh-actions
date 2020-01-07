#!/bin/bash
set -e

. /common.sh

export INPUT_TF_DOCS_GIT_COMMIT_MESSAGE="skip: automated generate readme"
cd $GITHUB_WORKSPACE
git_setup

update_readme
generate_change_log

git_commit
git push