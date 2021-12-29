# goben as docker image

Packages [goben](https://github.com/udhos/goben) as a Docker image. The image is based on Alping and is stripped down. It only contains `goben` and commong CA certificates

The following commands runs the image in server mode using host networking

```
docker run --net=host mrbuk/goben:0.5 -defaultPort :9023
```

The image is currently build for the following platforms: `linux/amd64`, `linux/arm/v7`, `linux/arm64` using the following command:

```
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t mrbuk/goben:0.5 --push .
```

It was tested on a Raspberry Pi 4 and Intel i7.
