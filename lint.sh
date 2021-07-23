#!/bin/bash -xe

docker run --rm -i hadolint/hadolint < Dockerfile
