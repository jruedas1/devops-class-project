FROM ruby:2.4.1-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client

ENV RAILS_ROOT /var/www/class-project

RUN mkdir -p $RAILS_ROOT/tmp/pids

WORKDIR $RAILS_ROOT

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN gem install bundler

RUN bundle install

COPY . .

CMD ["config/containers/app_cmd.sh"]