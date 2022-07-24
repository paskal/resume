FROM alpine
# based on https://github.com/SvenDowideit/dockerfiles/tree/master/jsonresume

LABEL org.opencontainers.image.authors="Dmitry Verkhoturov <paskal.07@gmail.com>" \
      org.opencontainers.image.description="jsonresume-cli image with kendall theme installed" \
      org.opencontainers.image.documentation="https://github.com/jsonresume/resume-cli" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/paskal/resume.git" \
      org.opencontainers.image.title="jsonresume-cli" \

WORKDIR /data

# chromium is a dependency for puppeteer, required for arm build
RUN apk --no-cache add npm git chromium
RUN npm init -y
RUN npm install resume-cli@3.0.7
RUN npm install jsonresume-theme-kendall jsonresume-theme-kendall-ksenia

# use sed to make the webserver available for the Docker container to map
RUN sed -i~ "s/localhost/0.0.0.0/g" \
    node_modules/resume-cli/build/main.js \
    node_modules/resume-cli/build/serve.js

ENTRYPOINT ["node", "/data/node_modules/resume-cli/build/main.js"]
