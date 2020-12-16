FROM ruby:2.3.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /pdfHome
WORKDIR /pdfHome
ADD Gemfile /pdfHome/Gemfile
ADD Gemfile.lock /pdfHome/Gemfile.lock
RUN bundle install
ADD . /pdfHome
