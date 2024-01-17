#! /bin/bash

# Config git.
git config --global user.email "${HOSTNAME}@mail.gwdg.de"
git config --global user.name "${HOSTNAME}"

# DL ssh keys and notebook.
wget https://owncloud.gwdg.de/index.php/s/NwPzq7ZyWFbdt6G/download
mv download GA.zip
unzip GA.zip
mkdir -p .ssh
mv -v id_rsa* .ssh/.
chmod 600 .ssh/id_rsa

# Get codes
git clone git@gitlab.gwdg.de:mpievolbio-scicomp/gahyparopt.git
git clone git@gitlab.gwdg.de:mpievolbio-scicomp/evolution-und-ki.git

# Move dl'ed notebook to repo.
mv GASpiel.ipynb evolution-und-ki

# Build conda env.
mkdir ~/envs
cd gahyparopt
conda create -y -p ~/envs/GAKernel --file requirements.txt

# Setup conda env.
cd ~
conda init bash
ln -s .bashrc .login
ln -s .bashrc .profile

# Activate conda env.
source .bashrc
conda activate ~/envs/GAKernel

# Register kernel
ipython kernel install --user --name GAKernel

