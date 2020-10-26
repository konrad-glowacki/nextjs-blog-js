FROM node:14-alpine

ENV PORT 8080
WORKDIR /app
COPY . .