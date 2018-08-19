#!/bin/bash

full_build_directory=$1
github_url=$2

cd $full_build_directory

git init
git add -A
git commit -m "Initial commit"
git remote add origin "$github_url"
git push -u origin master
