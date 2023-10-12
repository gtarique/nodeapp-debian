FROM debian:latest
RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3001
CMD node index.js
