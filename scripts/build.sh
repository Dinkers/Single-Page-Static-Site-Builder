#!/bin/bash

project_name=$1
project_name_directory=$2
author=$3
full_build_directory=$4
github_url=$5

if [ ! -z "$github_url" ]; then
    github_url=""
fi

mkdir -p "$full_build_directory"

cp ./build_files/.* "$full_build_directory" 2>/dev/null
cp -R ./build_files/* "$full_build_directory"

# build package.json
sed -i.bak "s/PROJECT_NAME/$project_name_directory/g" "$full_build_directory/package.json" && rm "$full_build_directory/package.json.bak"
sed -i.bak "s/AUTHOR/$author/g" "$full_build_directory/package.json" && rm "$full_build_directory/package.json.bak"
sed -i.bak "s/GITHUB_URL/$github_url/g" "$full_build_directory/package.json" && rm "$full_build_directory/package.json.bak"

# build index.html
sed -i.bak "s/PROJECT_NAME/$project_name/g" "$full_build_directory/index.html" && rm "$full_build_directory/index.html.bak"

# build README.md
sed -i.bak "s/PROJECT_NAME/$project_name/g" "$full_build_directory/README.md" && rm "$full_build_directory/README.md.bak"
