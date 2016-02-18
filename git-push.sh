#!/bin/bash
echo -n 'Inserire nome repository: '
read repo
echo -n 'Nome user: '
read login
cd "$repo"
git add *
echo -n 'Scrivere il commit: '
read comment
git commit -am "$comment"
git pull --rebase origin master
git remote rm origin
git remote add origin git@github.com:"$login"/"$repo"
git push -u origin master
