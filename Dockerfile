
FROM node:alpine
LABEL Name=paskal/jsonresume

WORKDIR /data
ENTRYPOINT ["resume"]

# use sed to make the webserver available for the Docker container to map
RUN npm install -g \
  phantomjs-prebuilt \
  resume-cli \
  jsonresume-theme-kendall --unsafe-perm \
  && sed -i~ "s/localhost/0.0.0.0/g" \
   /usr/local/lib/node_modules/resume-cli/index.js \
   /usr/local/lib/node_modules/resume-cli/lib/serve.js
