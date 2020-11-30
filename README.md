# i2k-2020-s3-ngff-zarr-workshop

[![Cloud on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/joshmoore/i2k-2020-s3-ngff-workshop/HEAD?filepath=conversion.ipynb)
[![Conversion on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/joshmoore/i2k-2020-s3-ngff-workshop/HEAD?filepath=cloud.ipynb)

## Set-up

To run the Jupyter Notebooks and napari:

Install Anaconda https://www.anaconda.com/products/individual#Downloads

Then, to create the environment:

    $ cd i2k-2020-s3-ngff-workshop
    $ conda env create -n ngff -f binder/environment.yml
    $ conda activate ngff

Run a Notebook:

    $ jupyter notebook conversion.ipynb

Alternatively, build in Docker:

    $ docker build -t i2k-image i2k-2020-s3-ngff-workshop
    $ docker run -ti --rm i2k-image
    (i2k) i2k@3bf3a0731b8b:/work$ mc ls play/i2k2020
