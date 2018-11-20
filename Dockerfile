FROM ruby:2.4.4

RUN apt-get update -qq && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -qqy --no-install-recommends awscli ca-certificates cmake git nodejs zip && \
  gem update bundler && \
  npm install -g mjml@4.0.0