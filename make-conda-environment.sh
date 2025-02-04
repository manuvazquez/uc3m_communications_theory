#!/bin/bash

MANAGER="mamba"

NAME=ct

LIBRARIES=(
    python
    ipdb
    jupyterlab ipywidgets
    numpy
    matplotlib
    scipy
    voila
    librosa
    fastcore
    ipympl
    plotly
    pandas
    ipykernel
)

CHANNELS=(
    defaults
    conda-forge
    fastai
)

# ---

COLOR="\033[40m\033[32m"
UNCOLOR="\033[0m"


# ------------ setup

# only required if "anaconda" is not in the path
source $HOME/$MY_CONDA_INSTALLATION/etc/profile.d/conda.sh

# from https://stackoverflow.com/a/9429887/3967334
LIBRARIES_CONCATENATED=$(IFS=" " ; echo "${LIBRARIES[*]}")

# from https://stackoverflow.com/a/17841619/3967334
function join_by { local d=${1-} f=${2-}; if shift 2; then printf %s "$f" "${@/#/$d}"; fi; }

CHANNELS_CONCATENATED=$(join_by ' -c ' "${CHANNELS[@]}")

# ------------ installation

$MANAGER create --yes -n $NAME $LIBRARIES_CONCATENATED -c $CHANNELS_CONCATENATED

# ------------ pip

conda activate $NAME

# pip stuff here....

# ------------

echo -e new environment is \"$COLOR$NAME$UNCOLOR\"
