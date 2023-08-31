# EMBO Practical Course 2023

This repository contains a notebook for practicals during
[Advanced methods in bioimage analysis](https://www.embl.org/about/info/course-and-conference-office/events/bia23-01/)

## Requirements

This repository is intended to be run on https://band.embl.de/
with the following course material available:

```
$ pwd
/scratch/bioimagecourse2023/session1

$ ls -l

total 146350
drwxr-xr-x  9 josh_openmicroscopy users     4096 Aug 29 15:30 EMBO-Practical-Course-2023
-rw-r--r--  1 josh_openmicroscopy users 86485611 Aug 20 18:47 Mambaforge-Linux-x86_64.sh
-rw-r-----  1 josh_openmicroscopy users 23433941 Aug 29 10:44 OMEZarrReader-0.3.1-jar-with-dependencies.jar
drwxr-xr-x  4 josh_openmicroscopy users     4096 Aug 21 11:48 conda
drwxr-xr-x  3 josh_openmicroscopy users     4096 Aug 31 09:16 data
drwxr-xr-x 19 josh_openmicroscopy users     4096 Aug 29 14:53 mambaforge
-rwxr-xr-x  1 josh_openmicroscopy users 26406912 Aug 21 12:16 mc
-rw-r--r--  1 josh_openmicroscopy users       78 Aug 29 11:13 notebook.sh
-rw-r--r--  1 josh_openmicroscopy users      242 Aug 29 10:47 setup.sh
```

## Running locally

If you would like to install the necessary requirements locally,
we suggest using conda or omamba, e.g.:

https://mamba.readthedocs.io/en/latest/mamba-installation.html#mamba-install

(At the time of the workshop, micromamba did *not* work with Jupyter.)

Then, to create the environment:

    $ git clone git://github.com/ome/EMBO-Practical-Course-2023
    $ cd EMBO-Practical-Course-2023
    $ omamba create -n embo -f binder/environment.yml

Installing the requirements locally means that you
can then use the tools like `bioformats2raw` without needing to launch
Jupyter itself:

    $ omamba activate embo
    $ bioformats2raw my.tiff output

But if you would like, you can run the Notebook server yourself:

    $ mamba activate embo
    $ jupyter notebook 3_POSIX_Bash.ipynb

## Running in Docker

Or if you would like to run this repository locally and have Docker installed,
you can use the [repo2docker](https://repo2docker.readthedocs.io/en/latest/)
tool to run this repository as a local Docker instance:

    $ git clone git://github.com/ome/EMBO-Practical-Course-2023
    $ cd EMBO-Practical-Course-2023
    $ repo2docker .

Then follow the instructions that are printed after the Docker image is built.
