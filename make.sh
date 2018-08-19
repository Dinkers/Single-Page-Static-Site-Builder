#!/bin/bash

read project_name author github_url full_build_directory <<< $(bash scripts/setup.sh)


echo "Building $project_name for $author in $full_build_directory"
bash scripts/build.sh $project_name $author $github_url $full_build_directory

if [ $? -eq 0 ]; then
    echo "Successfully built files for $project_name"
else
    echo "Could not build files for $project_name" >&2
    echo "Cleaning up"
    rm -rf "$full_build_directory"
    exit 1
fi


echo "Handling npm dependencies"
bash scripts/npm.sh $full_build_directory

if [ $? -eq 0 ]; then
    echo "Successfully installed npm dependencies for $project_name"
else
    echo "Could not install npm dependencies for $project_name" >&2
    echo "Cleaning up"
    rm -rf "$full_build_directory"
    exit 1
fi


if [ "${github_url:-}" ]; then

    echo "Pushing initial $project_name to Github"
    bash scripts/github.sh $full_build_directory $github_url

    if [ $? -eq 0 ]; then
        echo "Successfully pushed $project_name to Github at $github_url"
    else
        echo "Could not push $project_name to Github" >&2
        echo "Continuing"
    fi

fi


echo "Starting local development server"
cd $full_build_directory
echo "Enter the command <grunt> from this directory to start the server in the future"
grunt
