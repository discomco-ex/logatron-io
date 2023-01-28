#! /bin/bash
clear

echo '-----------------------------------'
echo 'pushing version "$1" to dev branch'
echo '-----------------------------------'
git add .
git commit -m "$1" -a
git push  
echo '-----------------------------------'
echo 'pushing version "$1" to master branch'
echo '-----------------------------------'
git checkout master
git merge dev
git push
echo '-----------------------------------'
echo 'back to dev'
echo '-----------------------------------'
git checkout dev