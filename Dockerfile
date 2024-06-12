FROM ruby:3


RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim

RUN mkdir /yashedo

WORKDIR /yashedo

COPY Gemfile /yashedo/Gemfile
COPY Gemfile.lock /yashedo/Gemfile.lock

RUN bundle install

COPY . /yashedo