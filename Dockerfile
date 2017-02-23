FROM docker:1.13.1

RUN apk update
RUN apk add ruby
run apk add ruby-irb
RUN apk add ruby-rdoc
RUN gem install observr

WORKDIR /app

ENTRYPOINT [ "observr" ]
