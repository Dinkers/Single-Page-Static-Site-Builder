#!/bin/bash

read project_name author build_directory github_url project_name_directory full_build_directory <<< $(bash scripts/setup.sh)


echo "Building $project_name for $author in $full_build_directory"
bash scripts/build.sh $project_name $author $build_directory $github_url $full_build_directory

if [ $? -eq 0 ]
then
    echo "Successfully built files for $project_name"
else
    echo "Could not build files for $project_name" >&2
    echo "Cleaning up"
    rm -rf "$full_build_directory"
    exit 1
fi


echo "Handling npm dependencies"
bash scripts/npm.sh
