#!/bin/zsh
git -C $1 branch --merged | egrep -v "(^\*|main|prod)" | xargs git -C $1 branch -D
