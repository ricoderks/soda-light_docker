## Introduction

This image is based on **rocker/r-base**.

## Build

Build the container with:

`docker build --tag <name of tag> .`

**Example:**

`docker build --tag sodalight_r441 .`

## Run

First set the export the UID and GID with:

* `export UID=$(id -u)`
* `export GID=$(id -g)`

Run the container with:

`docker run --rm -ti -v "$PWD":/home/docker -w /home/docker --user $UID:$GID <name of tag>`

**Example:**

`docker run --rm -ti -v "$PWD":/home/docker -w /home/docker --user $UID:$GID sodalight_r441`

