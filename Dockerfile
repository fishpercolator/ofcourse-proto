FROM ruby:2.4
MAINTAINER Rich Daley <rich@fishpercolator.co.uk>
ENV REFRESHED_AT 2017-03-28

RUN adduser --uid 1001 --disabled-password --gecos "" rails

RUN gem install bundler

ENV APP_HOME /usr/src/ofcourse-proto
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile BUNDLE_JOBS=2 BUNDLE_PATH=/bundle

RUN bundle install

ENV RAILS_ENV       production
ENV DOMAIN_NAME     localhost
# NOTE: ALWAYS override this or your sessions will be insecure!
ENV SECRET_KEY_BASE 84a1f5da2847cacaa0b076d7eee4cc022cce3e9a1e1c1bdd6d94ce669b49c436d60a7e220504c1acd6afb7d15df84f475f2de6fc1c89f3fadd750c618f13b2e2

ADD . $APP_HOME

RUN RAILS_ENV=production bundle exec rake assets:precompile

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
