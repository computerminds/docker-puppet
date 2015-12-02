# docker-puppet

Use this image to test your puppet code

## Tools

- git
- puppet

## Usage


Pull the container
```
docker pull jonadup/docker-puppet
```

Run the container with your code
```
docker run -i -v /<your folder>:/root/puppet/ -t jonadup/puppet bin/bash
```