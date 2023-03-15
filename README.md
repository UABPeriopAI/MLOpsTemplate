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
Once cookiecutter is installed, you can call this repository directly from the command line with the cookiecutter API.  This cookiecutter is designed to install the codebase first and it automatically follows up with the creation of the data structure.  Once the data directory ahs been created, relocate it elsewhere - do not check in the data (MLFlow will handle the data that). An example of how to create a new project from this template looks like:
~~~
cookiecutter [https://gitlab.rc.uab.edu/anes_ai/cookiecutter-segmentation](https://github.com/UABPeriopAI/MLOpsTemplate) --checkout main --directory cc-codebase
~~~
Executing this command will initiate prompts for you to enter project specific information.  Our template has the following inputs for a new project:

