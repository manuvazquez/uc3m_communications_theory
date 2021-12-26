#!/bin/bash

NAME=ct
MANAGER="mamba"

# only required if "anaconda" is not in the path
source $HOME/anaconda3/etc/profile.d/conda.sh

$MANAGER create --yes -n $NAME python=3 ipdb jupyterlab ipywidgets numpy matplotlib scipy voila librosa fastcore ipympl -c defaults -c conda-forge -c fastai
