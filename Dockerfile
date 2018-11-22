FROM ruby:2.5.3

RUN apt-get update -qq && \
  apt-get install -qqy --no-install-recommends curl && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -qqy --no-install-recommends awscli ca-certificates cmake git nodejs zip && \
  gem update bundler && \
  npm install -g mjml@4.0.0