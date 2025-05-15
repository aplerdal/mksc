# Installing
These instructions cover how to build **mksc** which assembles the files into a matching ROM. If you have any issues feel free to ask in the [discord](https://discord.gg/C6dNp2EvGy) or leave an issue on the github repository.

The recommended way to build is using the [Dcker image](https://hub.docker.com/r/antimattur/mksc). In order to do this you have to have the latest version of docker installed on your system. If you don't have it installed, follow the installation instructions on their website and come back ([link](https://docs.docker.com/get-started/get-docker/)).

----
This guide assumes you know how to use a terminal or command line and have some basic tools like [Git](https://git-scm.com/downloads).

### Instructions

Clone the repository locally and cd into it
```sh
git clone https://github.com/aplerdal/mksc
cd mksc
```

Pull the docker image
```sh
docker pull antimattur/mksc:latest
```

To build the repo run
```sh
docker run --rm -v "$PWD":/project -w /project antimattur/mksc
```
To delete all build files
```sh
make clean
```

If you want to install the repo without docker, you can follow the steps the [Dockerfile](Dockerfile) does. 
