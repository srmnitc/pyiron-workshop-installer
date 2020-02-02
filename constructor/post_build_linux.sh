#!/bin/bash
export PATH=$PREFIX/bin:$PATH

# NGLview fixes
conda activate
jupyter nbextension install nglview --py --sys-prefix
jupyter nbextension enable nglview --py --sys-prefix
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install nglview-js-widgets
