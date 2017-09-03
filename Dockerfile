FROM jetbrains/teamcity-agent:2017.1.3

RUN curl -L https://github.com/docker/compose/releases/download/latest/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose