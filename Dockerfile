FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev

# yarnインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# nodejs10系インストール
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install nodejs

RUN mkdir /ror-elearning
WORKDIR /ror-elearning
ADD Gemfile /ror-elearning/Gemfile
ADD Gemfile.lock /ror-elearning/Gemfile.lock
RUN bundle install
ADD . /ror-elearning