#!/bin/bash
echo -n 'Inserire nome repository: '
read repo
echo -n 'Nome user: '
read login
cd "$repo"
git add .
echo -n 'Scrivere il commit: '
read comment
git commit -ma "$comment"
git push origin master


# FUNZIONA
#git add * -f
#echo -n 'Scrivere il commit: '
#read comment
#git commit -am "$comment"
#git pull --rebase origin master
#git remote rm origin
#git remote add origin git@github.com:"$login"/"$repo"
#git push -u origin master

#Try
# Setting - Developer settings - Personal access tokens
# Spuntare tutto e copiare il token
# git add *
# git commit -m "commit"
# git push origin master - User:mionome Pass:token

# Other Commands
#git init
#git add -A
#git commit -m 'Fix bad repo'
#git push
#git remote set-url origin git@github.com:username/repository
#git push -f origin master

