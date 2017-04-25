FROM ruby:latest
MAINTAINER Bruno Melo <brunousml@gmail.com>

### Install some libs
RUN apt-get update -qq \
    && apt-get upgrade -qq

RUN apt-get install -y build-essential libpq-dev nodejs

### Copy App
RUN mkdir /DashboardUserTracking
WORKDIR /DashboardUserTracking
COPY . /DashboardUserTracking

### Install Dependencies
RUN bundle install

# Finish setup
EXPOSE 3000

ENTRYPOINT ["make"]