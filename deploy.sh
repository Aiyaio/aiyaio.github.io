#!/usr/bin/env sh

set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'aiya.io' > CNAME

git init
git checkout -b gh-pages
git add -A
git commit -m 'chore: deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:aiyaio/aiyaio.github.io.git gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -

