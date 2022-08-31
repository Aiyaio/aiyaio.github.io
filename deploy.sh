#!/usr/bin/env bash

set -eou pipefail

# remove any existing builds
rm -rf out/

# build
npm run export

# navigate into the build output directory
cd out

# if you are deploying to a custom domain
echo 'aiya.io' > CNAME

# ignore jekyll processing
touch .nojekyll

git init
git checkout -b gh-pages
git add -A
git commit -m 'chore: deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:aiyaio/aiyaio.github.io.git gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -
