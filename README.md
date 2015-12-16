# jekyll-base
A base image for OrgSync Jekyll/Cogs/Nginx sites.

## Example Usage

*Dockerfile*
```Dockerfile
FROM quay.io/orgsync/jekyll-base
COPY nginx.conf /etc/nginx/nginx.conf
COPY . /code
RUN jekyll b && npm install && cogs
```
