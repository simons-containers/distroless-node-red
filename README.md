[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-node-red/pkgs/container/distroless-node-red) [![Tags](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-node-red/pkgs/container/distroless-node-red) <br> ![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/size.svg) ![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/wasted.svg) ![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/efficiency.svg) <br> ![Critical](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/critical.svg) ![High](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/high.svg) ![Medium](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/medium.svg) ![Low](https://raw.githubusercontent.com/simons-containers/distroless-node-red/badges/.badges/main/low.svg) <br> [![Publish Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-node-red/deploy.yaml?label=Publish%20Workflow&logo=github)](https://github.com/simons-containers/distroless-node-red/actions/workflows/deploy.yaml) [![Update Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-node-red/update-versions.yaml?label=Update%20Workflow&logo=github)](https://github.com/simons-containers/distroless-node-red/actions/workflows/update-versions.yaml)

# Distroless Node-RED container

Bare-bones distroless Node-RED container image.

## Running

Mount data directory at `/var/lib/nodered`.

Example:

```bash
docker run -it --rm -v ./data:/var/lib/nodered \
  ghcr.io/simons-containers/distroless-node-red:latest
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **nodered**, **NodeJS**, **gcc**, etc...) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Node-RED** - Low-code programming for event-driven applications.  
  https://nodered.dev

- **NodeJS** – Node.js is an open-source, cross-platform JavaScript runtime environment.  
  https://nodejs.org

- **GCC** – The GNU Compiler Collection, providing the C and C++ toolchain used to build core system components and application code.  
  https://gcc.gnu.org/

- **glibc** – GNU C Library providing the standard C runtime and POSIX interfaces used by most Linux systems.  
  https://www.gnu.org/software/libc/

- **tzdata** – The IANA Time Zone Database, which provides the canonical global timezone definitions used for correct time handling.  
  https://www.iana.org/time-zones

- **Mozilla CA Certificates** – The curated set of trusted root Certificate Authorities maintained by Mozilla and used by many systems for TLS verification.  
  https://wiki.mozilla.org/CA
