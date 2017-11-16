Docker container for [slack-irc](https://github.com/ekmartin/slack-irc)
===

## Install from DockerHub
### Get sample configuration
[config.json.sample](https://raw.githubusercontent.com/mrhillsman/dockerize-slack-irc/master/config.json.sample)

### Update configuration
Copy `config.json.sample` to `config.json` and edit appropriately.

### Start container w/config.json mounted
```
docker run -d --mount type=bind,src=/path/on/host/to/config.json,dst=/app/config.json mrhillsman/dockerize-slack-irc
```

## Build Docker Image Locally and Install
### Installation
```
git clone --recursive https://github.com/mrhillsman/dockerize-slack-irc
```

### Configuration
Copy `config.json.sample` to `config.json` and edit appropriately.

### Building and running

Build the docker container and run it locally:

```
cd dockerize-slack-irc
docker build -t slack-irc .
docker run -d -t slack-irc
```
