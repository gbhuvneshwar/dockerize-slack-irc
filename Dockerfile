FROM node:latest

WORKDIR /app

ENV DEBIAN_FRONTEND noninteractive

# Usual update / upgrade
RUN apt-get update
RUN apt-get upgrade -y

# Install requirements
RUN apt-get install -y libicu-dev curl supervisor

# Add configurations
COPY config.json /app

# Add upstream slack-irc
COPY slack-irc/ /app/
RUN npm install
RUN npm run build

# Add supervisor configs
COPY supervisord.conf /app

CMD ["-n", "-c", "/app/supervisord.conf"]
ENTRYPOINT ["/usr/bin/supervisord"]
