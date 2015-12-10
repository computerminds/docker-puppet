# docker-puppet

Use this image to test your puppet code

## Tools

- git
- puppet
- wget
- puppet-linter

## Puppet modules

- puppetlabs-concat

## Usage

Pull the container
```
docker pull jonadup/puppet
```

Run the container with your code:

Go to your puppet module folder

```
docker run --rm -it -v $PWD:/root/puppet/ -t jonadup/puppet <command>
```

### Command "parser"

This command will perform a "puppet parser validate" on your puppet code

```
docker run --rm -it -v $PWD:/root/puppet/ -t jonadup/puppet parser
```

### Command "linter"

This command will perform a "puppet-lint" on all your puppet code

```
docker run --rm -it -v $PWD:/root/puppet/ -t jonadup/puppet linter
```

### Command "apply"

This command will try to execute your puppet code

```
docker run --rm -it -v $PWD:/root/puppet/ -t jonadup/puppet apply
```
Don't forget to put some manifest file on your module folder