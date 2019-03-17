# this is a pytorch image that have opencv and jupyter-notebook installed
FROM tensorflow/tensorflow:1.13.1-gpu-py3-jupyter
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"

RUN apt update -y
RUN apt install -y libglib2.0-0 libsm6 libxext6 libfontconfig1 libxrender1

RUN pip --no-cache-dir install \
    opencv-python \
    jupyter \
    matplotlib \
    pandas \
    pillow \
    keras

COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

RUN chmod a+x /run_jupyter.sh

RUN rm -rf /notebooks

WORKDIR /workspace
RUN chmod -R a+w /workspace

CMD ["/run_jupyter.sh", "--allow-root"]

