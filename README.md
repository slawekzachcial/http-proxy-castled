# Probot Test Container

Container running *Tinyproxy* to test Probot execution behind HTTP proxy.

To build Docker image:
```
docker build -t http-proxy-castled .
docker build -t http-proxy-probot -f Dockerfile.probot .
```

To run the container:
```
docker run --privileged -it --rm -v ~/Workspace:/work -w /work/probot-hello-app --name http-proxy-probot http-proxy-probot ANY
```
