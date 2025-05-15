#! /bin/bash


cat /home/vinicius/Desenvolvimento/.passwords/github_token.txt | tr -d '\n' | xclip -selection clipoard
