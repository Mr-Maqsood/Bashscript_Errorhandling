#!/bin/bash
check_folder_exist() {
        folder=$1

    if [ -z $folder ]; then
        echo "Error: No folder name provided"
        echo "Usage: created folder if not exist $folder"
        exit 1
    fi

    if [ -d $folder ]; then
        echo "Folder $folder already exitst"
    else
        mkdir "$folder"
        echo "folder $folder has been created"
    fi

}
read -p "Enter your folder name:" folder
check_folder_exist $folder