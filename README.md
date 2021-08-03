# drone-runner-podman

this is just the same with `drone-runner-docker`, but with some bug fixed and make it work with `podman`

container image: `80x86/drone-runner-podman:v1.6.3`

docker hub: https://hub.docker.com/r/80x86/drone-runner-podman

```shell
DOCKER_HOST=unix:///run/podman/podman.sock
DOCKER_API_VERSION=1.40
```

must run with podman root mode, rootless mode will result in failure to "Error response from daemon: container create: container tried to set network aliases for network drone-cUjB3tXSDe8mV586fUnY but is not connected to the network: network not found"

The `docker` runner executes pipelines inside Docker containers.
This runner is intended for linux workloads that are suitable for execution inside containers. This requires Drone server `1.6.0` or higher.

Documentation:<br/>
https://docs.drone.io/runner/docker/overview/

Technical Support:<br/>
https://discourse.drone.io

Issue Tracker and Roadmap:<br/>
https://trello.com/b/ttae5E5o/drone


## Podman related docs

https://docs.podman.io/en/latest/_static/api.html

debug

```shell
# curl -s --unix-socket /run/podman/podman.sock http://d/v1.0.0/libpod/info | jq

# curl -s --unix-socket /run/podman/podman.sock 'http://d/v1.0.0/containers/drone-GQYL8wZ9sFxYZehVzrm9/logs?follow=0&stderr=1&stdout=1' | tee
```
