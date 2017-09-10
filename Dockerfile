FROM jetbrains/teamcity-agent:2017.1.4

RUN curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && apt-get update \
    && apt-get install python-pip -y \
    && apt-get install nodejs -y \
    && apt-get install npm -y \
    && pip install awscli \
    && echo "\nexport PATH=$PATH:~/.local/bin" | cat >> .profile