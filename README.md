# Node docker

Node server docker app. Step by step from Node.js doc of the following: https://docs.docker.com/language/nodejs/develop

## How to run docker images

Let’s create our volumes now. We’ll create one for the data and one for configuration of MongoDB.

```bash
docker volume create mongodb
```

```bash
docker volume create mongodb_config
```

Run docker-build.sh to build and run the mongodb and server.

```bash
$ sh docker-build.sh
```