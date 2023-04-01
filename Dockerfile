FROM node:12-alpine
WORKDIR /app
COPY package.json .
RUN apk add --no-cache python2 g++ make
RUN npm install
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000
