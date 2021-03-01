#!/bin/bash

# Run this script to create a kernel for this demo.
# The kernel name is "nbdemo" or "Notebook Demo".
#
# See docs:
# https://jupyterhub.gitlab-pages.dkrz.de/jupyterhub-docs/kernels.html#use-your-own-kernel
#
# Usage:
#   bash make_kernel.sh

KERNEL_NAME="nbdemo"
KERNEL_TITLE="Notebook Demo"
KERNEL_DIR="$HOME/kernels"
KERNEL_ENV="$KERNEL_DIR/$KERNEL_NAME"

module load python3/unstable
mkdir -p $KERNEL_DIR
conda env remove --prefix $KERNEL_ENV
# conda env create --prefix $KERNEL_ENV
conda create --prefix $KERNEL_ENV --file spec-list.txt
$KERNEL_ENV/bin/python -m ipykernel install --user --name $KERNEL_NAME --display-name="$KERNEL_TITLE"
