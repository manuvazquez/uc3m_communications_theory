#!/bin/bash

# only required if "anaconda" is not in the path
source $HOME/anaconda3/etc/profile.d/conda.sh

NAME=ct

conda create --yes -n $NAME python=3 ipdb jupyterlab ipywidgets numpy matplotlib scipy -c defaults -c conda-forge

# new environment is "activated"
conda activate $NAME

 # for jupyter widgets (not actually required when using the "standard" jupyter notebook)
 jupyter labextension install @jupyter-widgets/jupyterlab-manager

 
# the environment is exported into a yaml file
 conda env export --no-builds --from-history -f environment.yml
