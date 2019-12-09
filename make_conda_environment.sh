#!/bin/bash

# only required if "anaconda" is not in the path
source $HOME/anaconda3/etc/profile.d/conda.sh

NAME=ct

conda create --yes -n $NAME python=3 ipdb jupyterlab ipywidgets numpy matplotlib scipy -c defaults -c conda-forge

conda activate $NAME

 # for jupyter widgets
 jupyter labextension install @jupyter-widgets/jupyterlab-manager
