# This file is inspired from https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile

FROM pytorch/pytorch:latest
LABEL maintainer="Aymen Ben Othmen <aymenbenothmenabo@gmail.com>"


RUN conda install --quiet --yes \
    'notebook=6.1.5' \
    'jupyterhub=1.0.0' \
    'jupyterlab=2.2.6' \
    'tini=0.19.0'

RUN conda update --all --quiet --yes && \
    conda clean --all -f -y && \
    jupyter notebook --generate-config

# Copy local files as late as possible to avoid cache busting
COPY start.sh /usr/local/bin/start
COPY jupyter_notebook_config.py /etc/jupyter/

RUN touch /workspace/some_file.py
WORKDIR /workspace

EXPOSE 8888

ENTRYPOINT ["tini", "-g", "--"]
CMD ["start"]
