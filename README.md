# AllThingsEmbedded Builder

This repo contains the sources for the `ate_builder` image. The `ate_builder` image is a Docker image for building C++ projects from `AllThingsEmbedded` repositories.

# Usage

Releases are published to [Docker Hub](https://hub.docker.com/repository/docker/javiervarez/ate_builder) and versioned using [semantic versioning](https://semver.org). See the releases page for information on the current releases and their features.

In addition to released versions, the main branch is always published with the `main` tag automatically.

To use the image, just install docker and start a container with:

```sh
docker run -it --rm javiervarez/ate_builder:latest
```

Have fun hacking around!
