#!/bin/bash
set -x
echo "=======Creating virtual env========="
python3 -m virtualenv  .venv_{{cookiecutter.project_slug}}
source .venv_{{cookiecutter.project_slug}}/bin/activate

echo "=======Install test requirements======="
pip install -r test_requirements.txt

echo "=======Install doc requirements======="
pip install -r doc_requirements.txt

echo "=======Install core requirements======"
pip install -r core_requirements.txt

echo "========Create log dir for single runs========="
mkdir -p logs

echo "=======Login to wandb (optional)==============="
wandb init

echo "Do 'source .venv_{{cookiecutter.project_slug}}/bin/activate' to load the enviroment."
