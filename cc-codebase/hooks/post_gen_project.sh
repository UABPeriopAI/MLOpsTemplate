#!/bin/sh

cd {{cookiecutter.project_name}}
git init

git config --global user.name "{{cookiecutter.author}}"
git config --global user.email "{{cookiecutter.email}}"

git remote add origin {{cookiecutter.repository_url}}
git fetch
git pull origin master
git add .
git commit -m 'initializing from cookiecutter'
git push -u origin master
git branch -M master feature/initialize_template
git push origin HEAD


cookiecutter https://gitlab.rc.uab.edu/anes_ai/cookiecutter-segmentation --checkout develop --directory="cc-data"
