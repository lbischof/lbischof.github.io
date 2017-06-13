FROM ruby

RUN useradd --create-home --home-dir /usr/src/app middleman
WORKDIR /usr/src/app
COPY Gemfile* /usr/src/app/
RUN chown -R middleman:middleman /usr/src/app/
USER middleman
RUN bundle install --path .bundle
ENTRYPOINT ["middleman"]
CMD ["server"]
