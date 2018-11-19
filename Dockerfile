FROM ruby:2.4.4

RUN apt-get update -qq && \
  apt-get install -qqy --no-install-recommends libpq-dev tzdata && \
  gem update bundler