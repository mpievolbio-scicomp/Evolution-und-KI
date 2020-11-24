#! /bin/bash

conda env remove -n GA
jupyter kernelspec remove ga
jupyter kernelspec remove GA


mkdir ~/envs

conda env create -y -p envs/GAKernel --file gahyparopt/requirements.txt

conda activate envs/GAKernel

ipython kernel install --user --name GAKernel

