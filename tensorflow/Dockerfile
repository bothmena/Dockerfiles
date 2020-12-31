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
    keras \
    jupyterthemes \
    pytest \
    autopep8

RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install

COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
COPY nb_extensions.txt /

RUN chmod a+x /run_jupyter.sh

RUN rm -rf /notebooks

WORKDIR /workspace
RUN chmod -R a+w /workspace

RUN while read -r line; do jupyter nbextension enable "$line"; done < /nb_extensions.txt
RUN jt -t onedork -f firacode -fs 11 -altp -tfs 11 -nfs 14 -cellw 80% -T -N -kl

CMD ["/run_jupyter.sh", "--allow-root"]

