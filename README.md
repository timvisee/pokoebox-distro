# PokoeOS Linux Distro
Tool for building the PokoeOS Linux distribution for the PokoeBox project.

PokoeBox project: https://gitlab.com/timvisee/pokoebox

This repository holds the toolset and configuration files needed to build
the custom Linux distribution optimized and preconfigured for the PokoeBox
project. The distribution targets the Raspberry Pi with a specific hardware
configuration.

The [`pi-gen`][pi-gen] tooling by Raspberry is used under the hood for building
the image.

## Building
This repository provides the `./build.sh` and `./build-docker.sh` script 
similar to `pi-gen`. It configures your environment for building the PokoeOS
image. It then proxies the call to the respective pi-gen to generate the image.

Please refer to the [`pi-gen`][pi-gen] README for information on which of the
two to use, and what requirements they have.

```bash
# Build on host
./build.sh

# or, build in Docker environment
./build-docker.sh
```

After building succeeds, see the `./deploy` directory.

## License
This project is released under the GNU GPL-3.0 license.
Check out the [LICENSE](./LICENSE) file for more information.

[pi-gen]: https://github.com/RPi-Distro/pi-gen
