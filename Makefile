debug:
	go build -gcflags "all=-N -l" .
	sudo /home/ttys3/go/bin/dlv --listen=:2345 --headless=true --api-version=2 --accept-multiclient exec ./drone-runner-docker daemon ./a.env

build:
	env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o release/linux/amd64/drone-runner-docker
	sudo podman build --format docker -t drone-runner-podman -f ./docker/Dockerfile.linux.amd64 .

push:
	sudo buildah push --authfile /etc/containers/auth.json drone-runner-podman:latest docker://docker.io/80x86/drone-runner-podman:latest
