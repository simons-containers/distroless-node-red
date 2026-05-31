# Distroless Node-RED container

Bare-bones distroless Node-RED container image.

## Running

Mount data directory at `/var/lib/nodered`.

Example:

```bash
docker run -it --rm -v ./data:/var/lib/nodered \
  ghcr.io/simons-containers/distroless-node-red:latest
```

## Building

| Arg | Description |
|---|---|
| `NODERED_VERSION` | Version of Node-RED to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-node-red:$(yq -r .nodered versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
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
