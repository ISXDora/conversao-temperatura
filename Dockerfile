FROM ubuntu
ARG NODE_VERSION=setup_20.x
RUN apt -y update && \
  apt install -y curl && \
  curl -fsSL https://deb.nodesource.com/${NODE_VERSION} | bash - &&\
  apt -y update && \
  apt-get install -y nodejs
WORKDIR /app
COPY . ./
RUN cd src && npm install
ENTRYPOINT ["node", "src/server.js"]
