### Running notebook containers:


To run notebook containers correctly you need to export 3 environment variables:

- PROJECT_DIR: the home directory of the Jupyter notebook, you have to define it everytime you change your working directory (jupyter notebook working directory)
- HOST_IP: The ip address of the ubuntu, it will make it easier for you to open the notebook, knowing the correct ip address that will be exported in `~/.bashrc`.
- DISPLAY: This variable is only necessary if you are using an external display, it's the case if you are using `gym` in DRL Pytorch Notebook image

**Workflow of running the containers**:

1- Set the project directory:

```
# method 1:
$ cd /path/to/your/project
$ nbhere

# method 2:
$ nbin /path/to/your/project
```

2- Go back to docker file project folder to run the containers:

```
$ todockerfiles
$ cd pytorch-notebook # or drl-pytorch-notebook
```

3- Start the containers:

```
$ docker-compose up
```

4- If you are in detach mode [-d]:

```
$ toprojectdir
```

**Important**:

Most commands in the instrcution part are using alias, you find them in [project_dir]/bash_config

Make sure to at least have the aliases and the env variables mentioned above imported/exported to/from `~/.bashrc`.

**N.B.**

Please make sure to disable the firewall for the external display to work.
