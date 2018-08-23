#!/bin/bash

read -p "Project name: " project_name
read -p "Author: " author
read -p "Directory to build in: " build_directory
read -p "Github repository url: " github_url

project_name_directory=$(echo $project_name | tr '[:upper:]' '[:lower:]' | tr -s ' ' | tr ' ' '_')

if [ ${build_directory:0:1} == "." ]
then
    full_build_directory="$build_directory$project_name_directory"
else
    full_build_directory="$build_directory/$project_name_directory"
fi
