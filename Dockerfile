FROM node:20.11.1-alpine3.19
WORKDIR /app
COPY src/package*.json .
RUN npm install
COPY . ./
EXPOSE 8080
CMD ["node", "src/server.js"]
