FROM node:14-alpine

ENV PORT 8080
WORKDIR /app
COPY . .

RUN ls -la
RUN npm install --cache ./npm_cache
RUN ls -la
RUN npm run wpe-build

CMD ["npm", "start"]