FROM alpine
LABEL name=paskal/jsonresume
LABEL maintainer="paskal.07@gmail.com"

WORKDIR /data

RUN apk --no-cache add nodejs-npm git
RUN npm init -y
RUN npm install jsonresume/resume-cli jsonresume-theme-kendall jsonresume-theme-kendall-ksenia

# use sed to make the webserver available for the Docker container to map
RUN sed -i~ "s/localhost/0.0.0.0/g" \
    node_modules/resume-cli/index.js \
    node_modules/resume-cli/lib/serve.js

ENTRYPOINT ["node", "/data/node_modules/resume-cli"]