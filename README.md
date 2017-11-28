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

---

## Download Me!

Take this source from git repository with the following commands:

    $ git clone https://github.com/sangahco/sphinx-manual.git
    $ cd sphinx-manual
    $ git submodule init
    $ git submodule update

---

## How to Use

**Use the script `docker-auto.sh` to manage these services!**

    $ ./docker-auto.sh --help

You can use docker-compose also see belows.

Start the container with the following command and after the build the documentation 
will be accessible going to `http://localhost:80`

    $ docker-compose up

In case the server is using the [HUB](https://github.com/sangahco/docker-webapp-hub) 
service set the `HUB_INSTANCE` variable 
and use the hub configuration like below:

    $ HUB_INSTANCE=manual docker-compose -f docker-compose-with-hub.yml up

You can set the `HUB_INSTANCE` inside the `.env` file too.


Is possible to create a brand new documentation with the following command:

    $ ./docker-auto.sh run manual sphinx-quickstart -q --project=Demo --author='Disco Emanuele' /opt/sphinx/doc


---

## Setup New Manual

Create a new folder for the new manual and from that folder we create a new git repository:

    $ git init

Than we add this repository as upstream to the new repository:

    $ git remote add upstream https://github.com/sangahco/sphinx-manual.git
    $ git fetch upstream

Than we bring the initial files into the new folder:

    $ git merge upstream/template


Create a new repository on GitHub and set the new repository as origin into our folder:

    $ git remote add origin <new repo url here>

Push the new commits to GitHub:

    $ git push origin master

With Docker installed we can test the new manual:

    $ ./docker-auto.sh up

Go to http://localhost and you should see the main page.

Congratulations now we have a new manual!