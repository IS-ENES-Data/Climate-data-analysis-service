# Climate-data-analysis-service

[![NBViewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/IS-ENES-Data/Climate-data-analysis-service/tree/main/)

Welcome to the IS-ENES3 use cases repository for climate data analysis!

Here you can find Jupyter notebooks with coding examples showing how to use Big Data and High-Performance Computing software in the following applications:

* **Multimodel Comparison of CMIP6 models:** this notebook shows how to load, select, concatenate, calculate means, and plot using Xarray, cdo, and matplotlib.

* **Summer Days climate index with CMIP6 models:** this notebook shows how to find data in the huge data pool using Intake, filter a region and a period, load data, and calculate thresholds using Xarray, and plot with cartopy.

* **Tropical Nights climate index with CMIP6 models:** this notebook shows how to find data in the huge data pool using Intake, load data and calculate thresholds using Xarray, and plot with cartopy.

* **Frost Days climate index with CMIP6 models:** this notebook shows how to find data in the huge data pool using Intake, load data and calculate thresholds using Xarray, and plot with cartopy.

The Jupyter notebooks are meant to run in the Jupyterhub server of the German Climate Computing Center [DKRZ](https://www.dkrz.de/) which is an [ESGF](https://esgf.llnl.gov/) repository that hosts 4 petabytes of [CMIP6](https://pcmdi.llnl.gov/CMIP6/) model data (more info on the data pool [here](https://www.dkrz.de/up/services/data-management/cmip-data-pool)).

Do not try to run these notebooks in your premise, which is also known as [client-side](https://en.wikipedia.org/wiki/Client-side) computing. It will fail because you will not have direct access to the data pool. Direct access to the data pool is one of the main benefits of the [server-side](https://en.wikipedia.org/wiki/Server-side) data-near computing demonstrated in these tutorials and use cases :relaxed:.

Visit the documentation [here](http://mipdata.gitlab-pages.dkrz.de/tutorials-and-use-cases/). We included there animations on how to log in and run the notebooks to get you started. Or you can follow the quick start below.

#### Quick start

Clone this tutorial-and-use-cases repo in your home at the DKRZ supercomputer "Mistral" or just download from here and upload there the notebook of your interest.

Then, the repo or just the notebook will be visible from the Jupyterhub. When opening the Jupyterhub, pick a job profile from the display. Please, chose the "prepost" nodes if the notebook need internet access (more info on the nodes [here](https://www.dkrz.de/up/systems/mistral/running-jobs/partitions-and-limits)). Once the job is launched and you open the notebook, please, choose the Python 3 unstable kernel on the Kernel tab (upper tool bar in the Jupyterhub). This kernel already contains all the common geoscience packages. See in this [video](https://youtu.be/f0wZX9i0uWQ) the main features of the DKRZ Jupterhub/lab and how to use it. Advance users developing their own notebooks can find there how to create their own environments that are visible as kernels by the Jupyterhub/lab.

Besides the information on the Jupyterhub, in these DKRZ [docs](https://www.dkrz.de/up/systems/mistral/programming/jupyter-notebook) you can find how to run Jupyter notebooks directly in the DKRZ server, that is, out of the Jupyterhub (it entails that you install the geoscience packages you need).

**Reach us at data-pool@dkrz.de**
