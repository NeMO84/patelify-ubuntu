[![Docker Pulls](https://img.shields.io/docker/pulls/patelify/ubuntu.svg)](https://hub.docker.com/r/patelify/ubuntu/)

# patelify/ruby

An [Ubuntu](https://www.ubuntu.com/) image built from [Docker Hub - Ubuntu](https://hub.docker.com/_/ubuntu/). More specifically 'ubuntu:14.04.5'.

## Base Docker Image

* [library/ubuntu:14.04.5](https://hub.docker.com/_/ubuntu/)

## Image Details
- ubuntu 14.04.5
- ruby (2.3.1p112 - 2016-04-26 revision 54768)
- gem (2.6.7)
- bundler (1.13.6)

## Ubuntu Dockerfile

This repository contains a **Dockerfile** that leverages Ubuntu base image to build a [Ruby](https://www.ruby-lang.org/en/) installed image, with other dependencies, to use further as a base image. This is an [automated build](https://hub.docker.com/r/patelify/ubuntu/) published to the public [Docker Hub Registry](https://hub.docker.com/).

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [patelify/ubuntu](https://hub.docker.com/r/patelify/ubuntu/) from the public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull patelify/ubuntu`


### Usage

    docker run -it --rm patelify/ubuntu


or if you're feeling adventureous

    docker run -it --rm patelify/ubuntu /bin/bash

