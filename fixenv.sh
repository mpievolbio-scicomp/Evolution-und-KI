#! /bin/bash

conda env remove -y -n GA
jupyter kernelspec remove ga
jupyter kernelspec remove GA


mkdir ~/envs

conda create -y -p ~/envs/GAKernel --file gahyparopt/requirements.txt && conda activate envs/GAKernel && ipython kernel install --user --name GAKernel

