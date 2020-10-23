FROM node:14-alpine

ENV PORT 8080
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --cache ./npm_cache

COPY . .
RUN npm run wpe-build

CMD ["npm", "start"]