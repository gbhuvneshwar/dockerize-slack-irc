Docker container for [slack-irc](https://github.com/ekmartin/slack-irc)
===

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
