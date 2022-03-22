FROM ruby:3.0.3-alpine 

RUN apk add --update --virtual \
    runtime-deps \
    build-base \
    libxml2-dev \
    libxslt-dev \
    sqlite-dev \
    libffi-dev \
    readline \
    build-base \
    libc-dev \
    linux-headers \
    readline-dev \
    file \
    git \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /app
COPY Gemfile Gemfile.lock /app/

ENV BUNDLE_PATH /gems

RUN gem install bundler -v 2.3.4
RUN bundle install

COPY . /app/

CMD ["sh"]

EXPOSE 3000