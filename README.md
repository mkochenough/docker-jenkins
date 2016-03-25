# jenkins-docker

Docker container image to run Jenkins LTS. This image installs additional software to be able to use it to build Android applications.

This image is based on https://github.com/jenkinsci/docker, so all configation abilities of it apply here too.

## Building

To build this image just clone this repository and run the following command:

```
docker build -t mkochenough/jenkins jenkins-docker
```

## Usage

```
docker run -p 8080:8080 -p 50000:50000 -v /your/home:/var/jenkins_home jenkins
```

