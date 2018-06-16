FROM ruby:2.4.1-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client libsqlite3-dev nodejs

ENV RAILS_ROOT /var/www/class-project

EXPOSE 3000

WORKDIR $RAILS_ROOT

COPY . .

RUN gem install bundler

RUN bundle install

CMD ["rails", "s"]

