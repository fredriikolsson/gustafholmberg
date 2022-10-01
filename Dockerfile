ARG RUBY_VERSION=3.1.1
FROM ruby:$RUBY_VERSION-slim-buster

RUN apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends --fix-missing \
    build-essential \
    shared-mime-info \
    curl \
    libcurl3-dev \
    libgit2-dev \
    git \
    cmake \
    gnupg2 \
    pkg-config \
    libxml2-dev \
    libpq-dev \
    imagemagick \
    wget \
    vim

WORKDIR /gustafholmberg
COPY Gemfile /gustafholmberg/Gemfile
COPY Gemfile.lock /gustafholmberg/Gemfile.lock

ENV BUNDLER_VERSION=2.3.18
RUN gem install bundler -v "$BUNDLER_VERSION"
RUN bundle install

Copy . /gustafholmberg

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
