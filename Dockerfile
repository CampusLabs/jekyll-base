FROM alpine
RUN apk --update add nginx nodejs ruby ruby-bundler ruby-dev ruby-rdoc ruby-irb python build-base libffi-dev zlib-dev && \
    gem install jekyll jekyll-redirect-from
WORKDIR /code
CMD ["nginx"]
