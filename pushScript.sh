#!/bin/bash
# This script is used to push the latest version of the script to the server.
# It is used to update the script when a new version is available.
echo -e "\e[1;34m"
echo "welcome to the push script this script will push the latest version of the script to the server"
echo "this script was made by rebaz omar and is licensed under the MIT license"
# red color
echo -e "\e[1;31m"
echo "https://github.com/rebazomar121/pushScript-shell"
        echo -e "\e[1;32m"
        Status=$(git status -s)
    if [ -z "$Status" ]; then
        echo "No changes to the tracked files. aborting."
        exit 0
    fi
    echo "Please enter your commit:"
    echo -e "\e[1;33m"
    read commit
    echo -e "\e[1;32m"
    if [ -z "$commit" ]; then
        echo "No commit message entered"
    fi
    commit=$(echo $commit | tr ' ' '_')
    echo "Pushing to remote repo"
    git add .
    git commit -m $commit
    git push
    echo -e "\e[1;30m"
        PRINT_ME="your commit has been pushed"
            for (( i=0; i<${#PRINT_ME}; i++ )); do
                echo -n "${PRINT_ME:$i:1}"
                sleep 0.05
            done
        echo
    exit