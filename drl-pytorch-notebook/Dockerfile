FROM bothmena/pytorch-notebook:latest
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"


# input => 8 (europe), 7 (berlin)
ENV TZ=Europe/Berlin
RUN apt update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt install -y \
        build-essential \
        autoconf \
        libtool \
        pkg-config \
        python-opengl \
        python-pil \
        python-pyrex \
        python-pyside.qtopengl \
        idle-python2.7 \
        qt4-dev-tools \
        qt4-designer \
        libqtgui4 \
        libqtcore4 \
        libqt4-xml \
        libqt4-test \
        libqt4-script \
        libqt4-network \
        libqt4-dbus \
        python-qt4 \
        python-qt4-gl \
        libgle3 \
        python-dev \
        libgl1-mesa-dev \
        libgl1-mesa-glx \
        libosmesa6-dev \
        python3-scipy \
        libglew-dev \
        patchelf \
        unzip \
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
RUN pip install -e /root/gym[box2d]

RUN conda clean --all -f -y
