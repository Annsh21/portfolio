#!/usr/bin/env bash

git add .
git commit -m 'Site updated'
git pull --no-tags --progress
git push --set-upstream origin
