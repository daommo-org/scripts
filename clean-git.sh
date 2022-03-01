#!/bin/zsh
for branch in $(git for-each-ref --format="%(refname:lstrip=2)" refs/heads/); do
    git -C $1 rebase origin/main "$branch" || git rebase --abort
done

git -C $1 checkout main
