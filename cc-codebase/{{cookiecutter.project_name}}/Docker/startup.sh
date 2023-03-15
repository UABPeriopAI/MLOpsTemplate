#!/bin/sh

git flow init -d

#to test the package as you go
cd src/
python3 -m pip install pip setuptools wheel
python3 -m pip install -e ".[dev]"
cd ../

#startup the MLFlow server
mlflow server --backend-store-uri sqlite:////data/DATASCI/lab_notebook/mlflow.db --default-artifact-root /data/DATASCI/lab_notebook/mlruns
