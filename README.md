# docker-expo

A docker image intended for use as a dev container for [Expo](https://docs.expo.dev) apps with the ability to use the android emulator on the host machine.

## How to use

#### Pull the image from Github

```bash
docker pull ghcr.io/xhudaman/docker-expo
```

#### Run the image

```bash
docker run --rm --network host ghcr.io/xhudaman/docker-expo
```

Once you are done using the server it can be shutdown by hitting `ctrl+c`.

## Building the image

1. Clone the repo and enter the directory in terminal

2. Run the following command:
   ```bash
     docker build -t <image-tag> .
   ```

You can override the default node image (`lts-slim`) inside the container by passing the following option `--build-arg NODE_VERSION=<tag>`, where `<tag>` is the desired node image tag. i.e. `--build-arg NODE_VERSION=lts-bullseye`

You could then run the container with the above run command replacing the image name with the one you chose.
