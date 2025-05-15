#!/bin/bash

PASS=$GITHUB_TOKEN_FILE_PASSWORD

cd /home/vinicius/Desenvolvimento/.passwords/
7z x github_token.7z -p$PASS -o./
cat github_token.txt | tr -d '\n' | xclip -selection clipboard
rm -rf github_token.txt
