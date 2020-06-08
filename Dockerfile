FROM alpine
LABEL name=paskal/jsonresume
LABEL maintainer="paskal.07@gmail.com"

WORKDIR /data
ENTRYPOINT ["resume"]

RUN apk --no-cache add nodejs-npm git
RUN npm install -g \
    jsonresume/resume-cli \
    jsonresume-theme-kendall \
    --unsafe-perm

# use sed to make the webserver available for the Docker container to map
RUN sed -i~ "s/localhost/0.0.0.0/g" \
    /usr/lib/node_modules/resume-cli/index.js \
    /usr/lib/node_modules/resume-cli/lib/serve.js
