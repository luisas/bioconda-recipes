FROM gitpod/workspace-full:latest

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -p $HOME/miniconda3
RUN rm ~/miniconda.sh

# Set PATH for Conda
ENV PATH=$HOME/miniconda3/bin:$PATH

# Activate Conda environment
RUN conda init bash
RUN echo "conda activate" >> ~/.bashrc

# Install conda-build
RUN conda install -c conda-forge conda-build

# Install other dependencies if needed

