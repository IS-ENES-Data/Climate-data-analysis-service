# Using Notebooks for Climate Data Analysis

Welcome to the IS-ENES3 use cases repository for climate data analysis!

Here you can find [Jupyter](https://jupyter.org/) notebooks with coding examples showing how to use Big Data and High-Performance Computing software.


## Notebooks

[![NBViewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/IS-ENES-Data/Climate-data-analysis-service/tree/main/)

We have notebooks for several use cases:

1. **Multimodel Comparison of CMIP6 models**
  * use Python to select data in data-pool,
  * use [cdo](https://pypi.org/project/cdo/) for computation.
2. **Frost Days climate index with CMIP6 models**
  * use [Intake](https://intake.readthedocs.io/en/latest/) to search data in data-pool,
  * use [Xarray](http://xarray.pydata.org/en/stable/) for computation.
3. **Tropical Nights climate index with CMIP6 models**
  * use Intake and Xarray.
4. **Summer Days climate index with CMIP6 models**
  * This is an **advanced** notebook. It requires additional installations steps ("Your own Jupyter kernel").
  * use [Folium](https://pypi.org/project/folium/) for maps,
  * use [hvPlot](https://pypi.org/project/hvplot/) for plots.

The Jupyter notebooks are meant to run in the [Jupyterhub](https://jupyterhub.dkrz.de/) server of the German Climate Computing Center [DKRZ](https://www.dkrz.de/) which is an [ESGF](https://esgf.llnl.gov/) repository that hosts 4 petabytes of [CMIP6](https://pcmdi.llnl.gov/CMIP6/) model data (more info on the data pool [here](https://www.dkrz.de/up/services/data-management/cmip-data-pool)).

Do not try to run these notebooks in your premise, which is also known as [client-side](https://en.wikipedia.org/wiki/Client-side) computing. It will fail because you will not have direct access to the data pool. Direct access to the data pool is one of the main benefits of the [server-side](https://en.wikipedia.org/wiki/Server-side) data-near computing demonstrated in these tutorials and use cases :relaxed:.

Visit the documentation [here](http://mipdata.gitlab-pages.dkrz.de/tutorials-and-use-cases/). We included there animations on how to log in and run the notebooks to get you started. Or you can follow the quick start below.

## Quick start

You will *only* need a browser to install and run the above notebooks.

1. Open the [DKRZ Jupyterhub](https://jupyterhub.dkrz.de) in your browser.
2. Login with your DKRZ account.
3. Pick a profile (``Preset -> Start from Preset Profile``). You need a **prepost** node. Choose profile ``20 GB memory, prepost``.
4. Launch Jupyter.
5. Open a terminal in Jupyter (``New -> Terminal``, on the right side)
6. A terminal window opens on the node where your Jupyter is running.
7. Clone the notebooks from GitHub:
```console
$ git clone https://github.com/IS-ENES-Data/Climate-data-analysis-service.git
```
8. Go back to your Jupyter and open a notebook from the notebooks folder:
```
Climate-data-analysis-service/notebooks/
```
9. Make sure you use the Jupyter ``Python 3 unstable`` kernel (``Kernel -> Change Kernel``).


### Alternative

Instead of using the terminal in Jupyter, you can also login to the DKRZ supercomputer *Mistral*:
```console
$ ssh myaccount@mistral.dkrz.de
```

And clone the notebooks repository from GitHub:
```console
$ git clone https://github.com/IS-ENES-Data/Climate-data-analysis-service.git
```

Then, the notebooks will be visible from the Jupyterhub.

### Further Infos

* Find more in the DKRZ Jupyterhub [documentation](https://jupyterhub.gitlab-pages.dkrz.de/jupyterhub-docs/index.html).
* *prepost* nodes at DKRZ have internet access [info](https://www.dkrz.de/up/systems/mistral/running-jobs/partitions-and-limits).
* ``Python 3 unstable`` kernel: This kernel already contains all the common geoscience packages that we need for our notebooks.
* See in this [video](https://youtu.be/f0wZX9i0uWQ) the main features of the DKRZ Jupterhub and how to use it.
* Advanced users developing their own notebooks can find there how to create their own environments that are visible as kernels by the Jupyterhub.

Besides the information on the Jupyterhub, in these DKRZ [docs](https://www.dkrz.de/up/systems/mistral/programming/jupyter-notebook) you can find how to run Jupyter notebooks directly in the DKRZ server, that is, out of the Jupyterhub (it entails that you install the geoscience packages you need).

## Advanced

The notebook to calculate *summer days* needs its own Jupyter kernel:

1. Open the terminal and run a script to make a new kernel:
```console
$ bash make_kernel.sh
```
2. ... it takes a couple of minutes ...
3. When done then go to you Jupyter and choose the new Kernel we just created ``Notebook Demo``.
4. Now you can run also the *summer days* notebook.

## Contact us

Reach us at <data-pool@dkrz.de>
