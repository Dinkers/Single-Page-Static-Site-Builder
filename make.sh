#!/bin/bash

read project_name author build_directory github_url project_name_directory full_build_directory <<< $(bash scripts/setup.sh)


echo "Building $project_name for $author in $full_build_directory"
bash scripts/build.sh $full_build_directory $project_name
