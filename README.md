# MLOpsTemplate
This repository contains a [cookiecutter template](https://cookiecutter.readthedocs.io/en/stable/) for deploying a MLOps infrastructure, brought to you by the [Perioperative Data Science Team at the University of Alabama, Birmingham](https://sites.uab.edu/periop-datascience/).

## Setup

If you are working in a Windows environment, first [install Windows Subsystem](https://learn.microsoft.com/en-us/windows/wsl/install) for Linux 2 (WSL 2).  This streamlines installation and makes porting projects to cloud or other environments easier.  

In order to use this template, the cookiecutter package must first be installed. You can test this by typing the following in the WSL 2 command line: 
~~~
cookiecutter --version
~~~ 



The output should look something like the following:
```
'Cookiecutter 1.7.3 from /home/rgodwin/anaconda3/lib/python3.6/site-packages (Python 3.6)'
```

If it not installed, you can do so with Pip:
~~~
pip install cookiecutter
~~~

## Usage
1. Before using the cookiecutter, create a new, empty repository for your project - you'll need the URL shortly.


2. With cookiecutter, you can call this repository directly from the command line.  This cookiecutter is designed to install the codebase first and it subsequently creates the data structure automatically.   An example of how to create a new project from this template looks like:
~~~
cookiecutter https://github.com/UABPeriopAI/MLOpsTemplate --checkout main --directory cc-codebase
~~~
Executing this command will initiate prompts for you to enter project specific information.  Our template has the following inputs for a new project (with default values in parenthesis):
#### cc-codebase
- [] Project Name () - Name of the new project
- [] Author Name () - Name of the person creating the project 
- [] Description () - Brief description of what the software is intended to do
- [] Author Email () - Be sure to use the email connected to your version control account
- [] Repository URL () - The empty git Repository URL for the new project from step 1
- [] Data Directory () - The folder where you plan to put the data (eventually we will move it there automatically, but for now this just updates the devcontainer.json so the Docker container knows where to find the data)

#### cc-data
- [] Data directory name (DATASCI)

Once the data directory has been created (Defaults to DATASCI), relocate it elsewhere (e.g., a network attached storage) - do not check in the data (MLFlow will handle the data that).
