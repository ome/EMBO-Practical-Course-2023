FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -m i2k
USER i2k

COPY --chown=i2k:i2k binder/environment.yml /work/
WORKDIR /work/

RUN conda config --prepend envs_dirs $HOME/.conda/envs
RUN conda config --prepend pkgs_dirs $HOME/.conda/pkgs
RUN conda env create -n i2k -f environment.yml \
 && conda clean -tipsy

# Prepare for build
COPY --chown=i2k:i2k . /work
RUN echo "source activate i2k" >> ~/.bashrc
ENV PATH /home/i2k/.conda/envs/i2k/bin:$PATH

env MPLBACKEND Agg
