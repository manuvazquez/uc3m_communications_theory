#!/bin/bash

NAME=ct
MANAGER="mamba"

# only required if "anaconda" is not in the path
source $HOME/anaconda3/etc/profile.d/conda.sh

$MANAGER create --yes -n $NAME python=3 ipdb jupyterlab ipywidgets numpy matplotlib scipy voila -c defaults -c conda-forge

# new environment is "activated"
conda activate $NAME
 
# # the environment is exported into a yaml file
# conda env export --no-builds --from-history -f environment.yml
