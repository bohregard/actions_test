FROM node:12-alpine
RUN apk add --no-cache make gcc g++ python
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
