ARG NODE_VERSION_TAG=lts-slim

FROM node:${NODE_VERSION_TAG} as base

ENV ANDROID_HOME=/usr/local/android-sdk
ENV NODE_ENV=development

RUN apt update -y \
  && apt install -y openjdk-17-jdk curl unzip

# Download & Install adb for all users
RUN mkdir -p /usr/local/android-sdk \
  && cd /usr/local/android-sdk/ \
  && curl -OL https://dl.google.com/android/repository/platform-tools-latest-linux.zip \
  && unzip platform-tools-latest-linux.zip \
  && rm -f platform-tools-latest-linux.zip \
  && ln -s /usr/local/android-sdk/platform-tools/adb /usr/local/bin/adb

RUN npm i -g pnpm

USER node
