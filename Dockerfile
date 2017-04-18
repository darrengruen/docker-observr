FROM docker:1.13.1

RUN apk update --no-cache
RUN apk add ruby
RUN apk add ruby-irb
RUN apk add ruby-rdoc
RUN apk add libnotify 
RUN gem install observr

WORKDIR /app

ENTRYPOINT [ "observr" ]
