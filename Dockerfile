FROM ruby:slim

# @TODO Get rev installed

RUN apt-get update \
    && gem install observr

WORKDIR /app

# CMD [ "observr" ]
ENTRYPOINT [ 'observr' ]
