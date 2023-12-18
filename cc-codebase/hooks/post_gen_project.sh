#!/bin/sh

git init

git config user.name "{{cookiecutter.author}}"
git config user.email "{{cookiecutter.author_email}}"

git remote add origin {{cookiecutter.repository_url}}
git fetch
git pull origin master
mv {{cookiecutter.data_directory_name}} {{cookiecutter.data_dir}}
git add .
git commit -m 'initializing from cookiecutter'
git push -u origin master
git branch -M master feature/initialize_template
git branch --remotes --delete  origin/master
git push origin HEAD



