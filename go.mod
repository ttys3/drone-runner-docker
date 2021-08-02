module github.com/drone-runners/drone-runner-docker

go 1.12

//replace github.com/docker/docker => github.com/docker/engine v17.12.0-ce-rc1.0.20200309214505-aa6a9891b09c+incompatible
replace github.com/docker/docker => github.com/ttys3/engine v1.17.12-ce-rc1-fix-podman-drone

//replace github.com/drone/runner-go => /home/ttys3/repo/go/runner-go

require (
	github.com/Microsoft/go-winio v0.4.11 // indirect
	github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc // indirect
	github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf // indirect
	github.com/buildkite/yaml v2.1.0+incompatible
	github.com/dchest/uniuri v0.0.0-20160212164326-8902c56451e9
	github.com/docker/distribution v2.7.1+incompatible
	github.com/docker/docker v0.0.0-00010101000000-000000000000
	github.com/docker/go-connections v0.3.0 // indirect
	github.com/drone/drone-go v1.6.0
	github.com/drone/envsubst v1.0.3
	github.com/drone/runner-go v1.8.0
	github.com/drone/signal v1.0.0
	github.com/ghodss/yaml v1.0.0
	github.com/gogo/protobuf v0.0.0-20170307180453-100ba4e88506 // indirect
	github.com/google/go-cmp v0.4.0
	github.com/joho/godotenv v1.3.0
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/kr/pretty v0.1.0 // indirect
	github.com/mattn/go-isatty v0.0.8
	github.com/opencontainers/go-digest v1.0.0-rc1 // indirect
	github.com/opencontainers/image-spec v1.0.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/sirupsen/logrus v1.4.2
	github.com/stretchr/testify v1.3.0 // indirect
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20210616094352-59db8d763f22 // indirect
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127 // indirect
	gopkg.in/yaml.v2 v2.2.2 // indirect
)
