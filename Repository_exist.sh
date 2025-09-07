#!/bin/bash
check_repository() {
    read -p "Enter the repository name want to clone:" repo
    if [ -z $repo ];then
        echo "Error: Repository URL is not provided"
        echo "Usage: clone if not exist $repo"
        exit 1
    fi

    repo_name=$(basename $repo .git)

    if [ -d $repo_name ]; then
        echo "repository $repo_name already exist. skipping clone"
    else
            echo "cloning  $repo into $repo_name"
            git clone "$repo" || {
                echo "failed to clone repository"
                exit 1 
            }
            echo "clone completed"
        fi
}
check_repository
