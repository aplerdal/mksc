# Mario Kart: Super Circuit
This is a decompilation of Mario Kart: Super Circuit (US).

It builds the following ROM:
* mksc.gba `sha1: 9d327c030c3e2d9007990518594f70c3340ac56f`

## Building
The recommended way to build is using the Docker image. In order to do this you have to have the latest version of docker installed on your system. If you don't have it installed, follow the installation instructions on their website and come back ([link](https://docs.docker.com/get-started/get-docker/)).

---

### Instructions
#### Linux
```sh
# Build rom
./buildrom.sh
# Check progress
./buildrom.sh progress
# Clean build
./buildrom.sh clean
```
#### Windows
double click buildrom.bat or
```sh
# Build rom
buildrom.bat
# Check progress
buildrom.bat progress
# Clean build
buildrom.bat clean
```
If you want to install the repo without docker, you can follow the steps the [Dockerfile](Dockerfile) runs. 

## Contributing
A guide for contributing can be found in [CONTRIBUTING.md](CONTRIBUTING.md)

## Contact
Most communication regarding this project happens in the [Discord](https://discord.gg/C6dNp2EvGy).

