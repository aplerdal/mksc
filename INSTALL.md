# Installation Instructions
These instructions explain how to set up everything required to build **mksc**, which compiles to a ROM file.

If you run into issues, ask for help on Discord (see [README.md](README.md)).

## Windows
Windows instructions are currently a work in progress.  
Advanced users can install a Linux distribution via WSL2 and follow the Linux instructions below.

## Linux
Open a terminal and enter the following commands, depending on your distribution.

### Debian/Ubuntu
Install the required packages:
```bash
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev gcc-arm-none-eabi
```
### Arch Linux

Install the required packages:

```bash
sudo pacman -S base-devel arm-none-eabi-binutils git libpng arm-none-eabi-gcc
```
### Choosing where to store mksc on Linux

At this point, you can choose a folder to store **mksc** (and **agbcc**). Open a terminal in that folder

## Installation

1. Download **mksc** if you haven’t already:

   ```bash
   git clone https://github.com/aplerdal/mksc
   ```
2. Install **agbcc** into **mksc**:

   ```bash
   git clone https://github.com/pret/agbcc
   cd agbcc
   ./build.sh
   ./install.sh ../mksc
   ```
3. Return to the parent directory where **mksc** and **agbcc** are stored:

   ```bash
   cd ..
   ```

Now you're ready to [build mksc](#build-mksc).

## Build mksc

1. Move into the **mksc** directory:

   ```bash
   cd mksc
   ```
2. Build **mksc.gba**:

   ```bash
   make
   ```

If successful, you will see:

```bash
mksc.gba: OK
```

If there are differences from the original game, you will instead see:

```bash
mksc.gba: FAILED
shasum: WARNING: 1 computed checksum did NOT match
```
If you have any issues on supported platforms ask for help in the Discord (see [README.md](README.md))
