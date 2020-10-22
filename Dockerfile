FROM node:14-alpine

ENV PORT 8080
WORKDIR /app
COPY . .

RUN time npm install
RUN time npm run wpe-build

CMD ["npm", "start"]