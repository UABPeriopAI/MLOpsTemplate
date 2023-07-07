# MLOps: A Template Framework for Traceable Machine Learning and Artificial Intelligence
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


2. With cookiecutter, you can call this repository directly from the command line.  This cookiecutter is designed to install the codebase and it automatically creates and relocates the data structure.   An example of how to create a new project from this template looks like:
~~~
cookiecutter https://github.com/UABPeriopAI/MLOpsTemplate --checkout main --directory cc-codebase
~~~
Executing this command will initiate prompts for you to enter project specific information.  Our template has the following inputs for a new project (with default values in parenthesis):
#### cc-codebase
- [ ] Project Name (default_proj) - Name of the new project
- [ ] Author Name () - Name of the person creating the project 
- [ ] Description () - Brief description of what the software is intended to do
- [ ] Author Email () - Be sure to use the email connected to your version control account
- [ ] Repository URL () - The empty git Repository URL for the new project from step 1
- [ ] Data Directory () - The folder where you plan to put the data (eventually we will move it there automatically, but for now this just updates the devcontainer.json so the Docker container knows where to find the data)
- [ ] Data directory name (DATASCI)

The data directory will be automatically created and moved to Data_Directory/Data_Directory_name/

Disclosure: This template may not work out of the box in every environment, but the contents of the template can be modified, the Docker parameters in particular, to get it working. 
