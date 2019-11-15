FROM ubuntu:latest AS nodejs
RUN apt-get update && apt-get install -y apt-utils gnupg curl
RUN curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo "deb https://deb.nodesource.com/node_12.x bionic main" | tee /etc/apt/sources.list.d/nodesource.list
RUN echo "deb-src https://deb.nodesource.com/node_12.x bionic main" | tee -a /etc/apt/sources.list.d/nodesource.list
RUN apt-get update
RUN apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

FROM nodejs
WORKDIR /usr/src/app
COPY package.json .
RUN yarn
COPY . .
CMD ["yarn", "electron"]




