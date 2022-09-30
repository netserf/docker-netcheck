# netcheck

[![Actions Status](https://github.com/netserf/netcheck/workflows/Docs/badge.svg)](https://github.com/netserf/netcheck/actions)

A container image for network troubleshooting and testing.

This image is based on the [official nginx container image](https://hub.docker.com/_/nginx)
found on [DockerHub](https://hub.docker.com). It hosts a number of tools that
can help with networking challenges encountered in container environments. The
image listens on TCP port 80, by default. The goal is provide a image that can
be exec'ed into and facilitate network troubleshooting inside your container
network.

## Usage

### How to build the image locally

```bash
docker build -t netcheck:latest .
```

### How to run the image locally

```bash
docker run --name netcheck --detach netcheck:latest
```

### How to check that the image is running

```bash
netcheck_ip=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' netcheck)
curl http://${netcheck_ip}
```

TODO

## License

TODO

## Contributions

TODO
