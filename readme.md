# goben as docker image

Packages [goben](https://github.com/udhos/goben) as a Docker image. The image is based on Alping and is stripped down. It only contains `goben` and commong CA certificates

The following commands runs the image in server mode using host networking

```
docker run --net=host mrbuk/goben:0.5 -defaultPort :9023
```
