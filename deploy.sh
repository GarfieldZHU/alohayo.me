#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# deploy to a the personal domain
# echo 'alohayo.me' > CNAME

git init
git add -A
git commit -m 'deploy'

# deploy to github.io
# git push -f git@github.com:GarfieldZHU/GarfieldZHU.github.io.git master

# deploy to github pages
# git push -f git@github.com:GarfieldZHU/alohayo.me.git master:gh-pages

cd -