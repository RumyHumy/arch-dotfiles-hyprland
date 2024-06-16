#!/bin/bash
set -e

cd ~/dotfiles

echo "Pulling"
git pull

echo "Adding files to commit"
git add *

echo "Commit \"$(date)\""
git commit -m "$(date)"

echo "Pushing"
git push
