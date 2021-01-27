FROM bothmena/pytorch-notebook:latest
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"

ENV TZ=Europe/Berlin
RUN apt update && \
    apt install -y \
        git \
        # next 3 packages needed for open-cv
        ffmpeg \
        libsm6 \
        libxext6

RUN conda update --all --quiet --yes
RUN conda install python=3.8
RUN conda install -c anaconda -c conda-forge \
    pillow \
    matplotlib \
    numpy \
    pytest \
    jupyter \
    docopt \
    pyyaml \
    grpcio \
    protobuf \
    pandas \
    scipy \
    ipykernel \
    cython \
    tensorboard \
    tqdm \
    seaborn \
    pandas \
    pycocotools \
    wandb
RUN pip install opencv-python thop

RUN git clone https://github.com/ultralytics/yolov5.git /tmp/yolov5
RUN mv /tmp/yolov5/models /opt/conda/lib/python$(python --version | tail -c 6 | head -c 3)/site-packages
RUN mv /tmp/yolov5/utils /opt/conda/lib/python$(python --version | tail -c 6 | head -c 3)/site-packages

RUN conda clean --all -f -y
