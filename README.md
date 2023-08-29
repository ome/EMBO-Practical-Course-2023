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
drwxr-xr-x 4 josh_openmicroscopy users     4096 Aug 21 11:48 conda
drwxr-xr-x 3 josh_openmicroscopy users     4096 Aug 22 14:56 data
drwxr-xr-x 8 josh_openmicroscopy users     4096 Aug 21 11:46 EMBO-Practical-Course-2023
-rwxr-xr-x 1 josh_openmicroscopy users 26406912 Aug 21 12:16 mc
-rwxr-xr-x 1 josh_openmicroscopy users 13516992 Aug 21 11:45 micromamba
-rw-r----- 1 josh_openmicroscopy users 23433941 Aug 29 10:44 OMEZarrReader-0.3.1-jar-with-dependencies.jar
-rw-r--r-- 1 josh_openmicroscopy users      242 Aug 29 10:47 setup.sh
```

## Running locally

If you would like to install the necessary requirements locally,
we suggest using conda or micromamba, e.g.:

https://mamba.readthedocs.io/en/latest/micromamba-installation.html

Then, to create the environment:

    $ git clone git://github.com/ome/EMBO-Practical-Course-2023
    $ cd EMBO-Practical-Course-2023
    $ micromamba create -n embo -f binder/environment.yml

Installing the requirements locally means that you
can then use the tools like `bioformats2raw` without needing to launch
Jupyter itself:

    $ micromamba activate embo
    $ bioformats2raw my.tiff output

But if you would like, you can run the Notebook server yourself:

    $ micromamba activate embo
    $ jupyter notebook 3_POSIX_Bash.ipynb

## Running in Docker

Or if you would like to run this repository locally and have Docker installed,
you can use the [repo2docker](https://repo2docker.readthedocs.io/en/latest/)
tool to run this repository as a local Docker instance:

    $ git clone git://github.com/ome/EMBO-Practical-Course-2023
    $ cd EMBO-Practical-Course-2023
    $ repo2docker .

Then follow the instructions that are printed after the Docker image is built.
