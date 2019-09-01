#!/bin/sh
reponame="$1"
if [ "$reponame" = "" ]; then
read -p "Enter Github Repository Name: " reponame
fi
mkdir ./$reponame
cd $reponame
curl -u amirsaeed671 https://api.github.com/user/repos -d "{\"name\":\"$reponame\"}"
git init
echo "ADD README CONTENT" > README.md
git add README.md
git commit -m "repo creation"
git remote set-url origin https://www.github.com/amirsaeed671/$reponame.git
git push -u origin masters