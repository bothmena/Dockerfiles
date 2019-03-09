# this is a pytorch image that have opencv and jupyter-notebook installed
FROM pytorch/pytorch:latest
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"

RUN pip --no-cache-dir install \
    opencv-python \
    jupyter \
    matplotlib \
    pandas \
    pillow

COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

RUN chmod +x /run_jupyter.sh

EXPOSE 9999

CMD ["/run_jupyter.sh", "--allow-root"]

