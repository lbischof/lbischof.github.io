FROM ruby

RUN useradd --create-home --home-dir /usr/src/app middleman
WORKDIR /usr/src/app
COPY Gemfile* /usr/src/app/
RUN bundle install
RUN chown -R middleman:middleman /usr/src/app/
USER middleman
ENTRYPOINT ["middleman"]
CMD ["server"]
