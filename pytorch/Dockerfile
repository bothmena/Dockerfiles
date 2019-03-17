# this is a pytorch image that have opencv and jupyter-notebook installed
FROM pytorch/pytorch:latest
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"

RUN apt update -y
RUN apt install -y libglib2.0-0 libsm6 libxext6 libfontconfig1 libxrender1

RUN pip --no-cache-dir install \
    opencv-python \
    jupyter \
    matplotlib \
    pandas \
    pillow \
    torchvision

COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

RUN chmod a+x /run_jupyter.sh

EXPOSE 8888 

CMD ["/run_jupyter.sh", "--allow-root"]

