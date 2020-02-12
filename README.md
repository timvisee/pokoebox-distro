# PokoeOS Linux Distro
Toolset for building the PokoeOS Linux distribution.

PokoeBox project: https://gitlab.com/timvisee/pokoebox

This builds a custom Linux distribution optimized for the PokoeBox project to
use on a Raspberry Pi using the [`pi-gen`][pi-gen] toolset provided by Raspberry.

## Build image
```bash
# Build on host, see pi-gen requirements
./build.sh

# Build in Docker
./build-docker.sh
```

## License
This project is released under the GNU GPL-3.0 license.
Check out the [LICENSE](./LICENSE) file for more information.

[pi-gen]: https://github.com/RPi-Distro/pi-gen
