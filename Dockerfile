FROM alpine
RUN apk --update add nginx nodejs ruby-dev python build-base libffi-dev && \
    gem install jekyll jekyll-redirect-from
COPY package.json /usr/lib/cogs/package.json
WORKDIR /usr/lib/cogs
RUN npm install && ln -s /usr/lib/cogs/node_modules/.bin/cogs /usr/bin
WORKDIR /code
CMD ["nginx"]
