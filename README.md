# PokoeOS Linux Distro
Repository for the custom PokoeOS Linux distribution for the [PokoeBox project][pokoebox].

The PokoeOS distribution includes:
- Based on [Raspbian][raspbian]
- Includes PokoeBox Player
- Boots into PokoeBox Player
- Includes PokoeBox runtime libraries
- Includes configurations for special hardware
- Minimal image (smaller, faster to boot, stripped obsolete data)

This repository holds the tools and configuration files needed to build
the custom Linux distribution optimized and preconfigured for the PokoeBox
project. The distribution targets the Raspberry Pi with a specific hardware
configuration.

The [`pi-gen`][pi-gen] tooling by Raspberry is used under the hood for building
the image.

## Building
This repository provides the `./build.sh` and `./build-docker.sh` scripts,
similar to the scripts in `pi-gen`. Both configure your environment for
building the PokoeOS image. They then proxy the call to the respective
`pi-gen` script to generate the image.

Call one of these scripts to invoke the build process. Please refer to the
[`pi-gen`][pi-gen] README for information on which to use, and what
requirements they have.

```bash
# Build on host
./build.sh

# or, build in Docker environment
./build-docker.sh
```

Building the image might take 30 to 60 minutes. When the build succeeds, see
the `./deploy` directory.

## License
This project is released under the GNU GPL-3.0 license.
Check out the [LICENSE](./LICENSE) file for more information.

[pokoebox]: https://gitlab.com/timvisee/pokoebox
[pi-gen]: https://github.com/RPi-Distro/pi-gen
[raspbian]: https://www.raspbian.org/
