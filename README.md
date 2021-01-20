# NGFF GBI 2021 Workshop

This repository contains notebooks for practicals during
the NGFF workshop from the [GBI Image Data Workshop](https://www.globalbioimaging.org/international-training-courses-for-core-facility-staff/image-data-course).

 * Notebook 1: Cloud basics - [![Conversion on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/joshmoore/i2k-2020-s3-ngff-workshop/HEAD?filepath=cloud.ipynb)
 * Notebook 2: Conversion basics - [![Cloud on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/joshmoore/i2k-2020-s3-ngff-workshop/HEAD?filepath=conversion.ipynb)

## Set-up

To run the Jupyter Notebooks:

Install Anaconda https://www.anaconda.com/products/individual#Downloads

Then, to create the environment:

    $ git clone git://github.com/joshmoore/i2k-2020-s3-ngff-workshop
    $ cd i2k-2020-s3-ngff-workshop
    $ conda env create -n ngff -f binder/environment.yml
    $ conda activate ngff

Run a Notebook:

    $ jupyter notebook conversion.ipynb

Alternatively, build in Docker:

    $ docker build -t i2k-image i2k-2020-s3-ngff-workshop
    $ docker run -ti --rm -p 8888:8888 i2k-image
    (i2k) i2k@3bf3a0731b8b:/work$ mc ls play/i2k2020
