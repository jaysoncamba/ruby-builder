FROM ruby:2.4.4

RUN apt-get update -qq && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -qqy --no-install-recommends nodejs build-essential libpq-dev && \
  gem update bundler && \
  npm install -g @2fd/graphdoc