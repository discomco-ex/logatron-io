#! /bin/bash
clear

echo '-----------------------------------'
echo pushing version "$1" to dev branch
echo '-----------------------------------'
git add .
git commit -m "$1" -a
git push  

