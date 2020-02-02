#!/bin/bash

# $2 is the install location, ($HOME by default)
if [ xxx$PREFIX == 'xxx' ]; then
    PREFIX=$(echo "$2/__NAME_LOWER__" | sed -e 's,//,/,g')
fi
export PATH=$PREFIX/bin:$PATH

# NGLview fixes
conda activate
jupyter nbextension install nglview --py --sys-prefix
jupyter nbextension enable nglview --py --sys-prefix
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install nglview-js-widgets
