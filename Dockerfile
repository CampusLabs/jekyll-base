FROM alpine
COPY ./Gemfile /code/Gemfile
COPY ./Gemfile.lock /code/Gemfile.lock
RUN apk --update add nginx nodejs ruby ruby-bundler ruby-dev ruby-rdoc ruby-irb python build-base libffi-dev zlib-dev
WORKDIR /code
RUN bundle install
CMD ["nginx"]
