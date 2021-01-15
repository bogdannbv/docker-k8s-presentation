# Docker & Kubernetes Presentation
An example app for Docker & Kubernetes Presentation

## Prerequisites

* [Docker](https://docs.docker.com/get-docker)
* [docker-compose](https://docs.docker.com/compose/install)
* [dive](https://github.com/wagoodman/dive)
* [json_pp](https://metacpan.org/pod/distribution/JSON-PP/bin/json_pp)
* [tree](https://linux.die.net/man/1/tree)

## Commands

```bash
docker build \
    -t bogdannbv/docker-k8s-example-app:0.1.0 \
    -t bogdannbv/docker-k8s-example-app:latest \
    --target prod \
    .
```

```bash
docker build \
    -t bogdannbv/docker-k8s-example-app:dev \
    --target dev \
    .
```

```bash
dive bogdannbv/docker-k8s-example-app:0.1.0
```

```bash
docker push \
    --all-tags \
    bogdannbv/docker-k8s-example-app
```

```bash
docker push \
    bogdannbv/docker-k8s-example-app:latest
```

```bash
docker search bogdannbv/docker
```

```bash
docker run \
    -it \
    -p 8080:8080 \
    bogdannbv/docker-k8s-example-app:0.1.0
```

```bash
docker run \
    -d \
    -p 8080:8080 \
    --name app \
    bogdannbv/docker-k8s-example-app:0.1.0
```

```bash
curl -s http://localhost:8080 | json_pp
```

```bash
docker kill app
```

```bash
docker start app
```

```bash
docker stop app
```

```bash
docker inspect -f '{{ json .GraphDriver }}' app | json_pp
```