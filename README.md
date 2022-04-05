# NGFF GBI 2022 Workshop

This repository contains a notebook for practicals during the
[GBI OME-NGFF workshop](https://globalbioimaging.org/international-training-courses/ome-ngff-workshop-2022).

## Running on MyBinder.org

You can launch workshop.ipynb by clicking on
[![binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/joshmoore/NGFF-GBI-2022-Workshop/HEAD?filepath=workshop.ipynb)

## Running in Docker

Alternatively, if you have Docker installed, you can use the [repo2docker](https://repo2docker.readthedocs.io/en/latest/)
tool to run this repository as a local Docker instance:

    $ git clone git://github.com/joshmoore/NGFF-GBI-2022-Workshop
    $ cd NGFF-GBI-2022-Workshop
    $ repo2docker .

Then follow the instructions that are printed after the Docker image is built.

## Running locally

Or finally, if you would like to install the necessary requirements locally,
we suggest using conda:

Install Anaconda https://www.anaconda.com/products/individual#Downloads

Then, to create the environment:

    $ git clone git://github.com/joshmoore/NGFF-GBI-2022-Workshop
    $ cd NGFF-GBI-2022-Workshop
    $ conda env create -n ngff -f binder/environment.yml

and run a Notebook:

    $ conda activate ngff
    $ pip install jupyter
    $ jupyter notebook workshop.ipynb

An additional benefit of installing the requirements locally is that you
can then use the tools like `bioformats2raw` without needing to launch
Jupyter itself:

    $ conda activate ngff
    $ bioformats2raw my.tiff output
