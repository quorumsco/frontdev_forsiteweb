FROM quorum/node-ruby
MAINTAINER DANIEL jean-Baptiste

ADD . /srv/http

WORKDIR /srv/http

RUN curl -SLO https://raw.githubusercontent.com/quorumsco/frontendfiles_siteweb/master/package.json && \
  curl -SLO https://raw.githubusercontent.com/quorumsco/frontendfiles_siteweb/master/Gemfile

RUN \
  bundle install && \
  npm install

ENV PATH $PATH:/srv/http/node_modules/.bin

