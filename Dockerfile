FROM ruby:3.0.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV INSTALL_PATH /onebittwitter

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile ./

ENV BUNDLE_PATH /app-gems

COPY . .