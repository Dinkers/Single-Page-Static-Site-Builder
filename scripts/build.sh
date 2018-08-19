#!/bin/bash

mkdir $full_build_directory

cp ./build_files/* $full_build_directory

sed -i.bak "s/PROJECT_NAME/$project_name/g" "$full_build_directory/package.json" && rm "$full_build_directory/package.json.bak"