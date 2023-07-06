#!/bin/sh

cd {{cookiecutter.project_name}}
git init

git config user.name "{{cookiecutter.author}}"
git config user.email "{{cookiecutter.author_email}}"

git remote add origin {{cookiecutter.repository_url}}
git fetch
git pull origin master
git add .
git commit -m 'initializing from cookiecutter'
git push -u origin master
git branch -M master feature/initialize_template
git push origin HEAD

cookiecutter https://github.com/UABPeriopAI/MLOpsTemplate --checkout rcg-uab-patch-1 --directory="cc-data" -o {{cookiecutter.data_dir}}
