FROM ruby:3.1.2-slim

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    less \
    git \
    libpq-dev \
    postgresql-client \
    imagemagick \
    curl \
    xvfb \
    xfonts-75dpi \
    file \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get install -y yarn

ENV LANG=en_US.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3 \
  BUNDLER_VERSION='2.3.7'

RUN gem update --system && gem install bundler --no-document -v '2.3.7'

ARG RAILS_PATH
WORKDIR $RAILS_PATH

ENV BUNDLE_PATH /gems
COPY Gemfile $RAILS_PATH/Gemfile
COPY Gemfile.lock $RAILS_PATH/Gemfile.lock

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# ENV RAILS_SERVE_STATIC_FILES=true
# ENV RAILS_LOG_TO_STDOUT=true
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
