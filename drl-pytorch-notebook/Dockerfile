FROM bothmena/pytorch-notebook:latest
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"


RUN apt update && \
    apt install -y \
        git \
        libglu1-mesa-dev \
        libgl1-mesa-dev \
        libosmesa6-dev \
        xvfb \
        ffmpeg \
        curl \
        patchelf \
        libglfw3 \
        libglfw3-dev \
        cmake \
        zlib1g \
        zlib1g-dev \
        swig

COPY base.yaml .

RUN conda update --all --quiet --yes && \
    conda env update -n base --file base.yaml

RUN git clone https://github.com/openai/gym.git /root/gym
RUN pip install -e /root/gym

RUN conda clean --all -f -y
