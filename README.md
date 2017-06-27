# jekyll-base
A base image for OrgSync Jekyll/Nginx sites.

## Example Usage

*Dockerfile*
```Dockerfile
FROM quay.io/orgsync/jekyll-base:0.2.0
COPY nginx.conf /etc/nginx/nginx.conf
COPY . /code
RUN bundle install && \
    bundle exec jekyll build
```
