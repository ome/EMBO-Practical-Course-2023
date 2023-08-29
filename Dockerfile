FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -m embo
USER embo

COPY --chown=embo:embo binder/environment.yml /work/
WORKDIR /work/

RUN conda config --prepend envs_dirs $HOME/.conda/envs
RUN conda config --prepend pkgs_dirs $HOME/.conda/pkgs
RUN conda env create -n embo -f environment.yml \
 && conda clean -tipsy

# Prepare for build
COPY --chown=embo:embo . /work
RUN echo "source activate embo" >> ~/.bashrc
ENV PATH /home/embo/.conda/envs/embo/bin:$PATH

env MPLBACKEND Agg
