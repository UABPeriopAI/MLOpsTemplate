#!/bin/sh

# Define your variables here
var1="{{cookiecutter.project_name}}"
var2="{{cookiecutter.author}}"
var3="{{cookiecutter.author_email}}"
var4="{{cookiecutter.repository_url}}"
var5="{{cookiecutter.data_dir}}"
var6="{{cookiecutter.data_directory_name}}"

# Function to check if a variable is empty
check_empty() {
    var_name=$1
    eval var_value=\$$var_name

    if [ -z "$var_value" ]; then
        echo "$var_name is empty"
        exit 1
    else
        echo "$var_name has the value: $var_value"
    fi
}

# List your variables
for var in var1 var2 var3 var4 var5 var6; do
    check_empty $var
done

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



