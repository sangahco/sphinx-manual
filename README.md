[![HitCount](http://hits.dwyl.io/sangahco/sangahco/sphinx-manual.svg)](http://hits.dwyl.io/sangahco/sangahco/sphinx-manual)
[![Jenkins](https://img.shields.io/jenkins/s/https/dev.builder.sangah.com/job/sphinx-manual.svg?style=flat-square)]()

# Sphinx with Web Server for building and run a Sphinx documentation

Build and run a sphinx documentation powered by Docker

## Requirements

First make sure *Docker* and *Docker Compose* are installed on the machine with:

    $ docker -v
    $ docker-compose -v

If they are missing, follow the instructions on the official website (they are not hard really...):

- [Docker CE Install How-to](https://docs.docker.com/engine/installation/)
- [Docker Compose Install How-to](https://docs.docker.com/compose/install/)


## How to Use

Start the container with the following command and after the build the documentation 
will be accessible going to `http://localhost:80`

    $ docker-compose up

In case the server is using an HUB service set the `HUB_INSTANCE` variable 
and use the hub configuration like below:

    $ HUB_INSTANCE=manual docker-compose -f docker-compose-with-hub.yml up

You can set the `HUB_INSTANCE` inside the `.env` file too.


**Use the script `docker-auto.sh` to manage these services!**

    $ ./docker-auto.sh --help


## Settings Up the Environment
