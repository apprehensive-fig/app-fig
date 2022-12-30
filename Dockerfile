FROM rails:onbuild

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN gem install bundler -v 2.4.1
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
