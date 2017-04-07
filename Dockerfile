FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /DashboardUserTracking
WORKDIR /DashboardUserTracking
COPY . /DashboardUserTracking

RUN bundle install
