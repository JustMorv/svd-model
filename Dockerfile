FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production
RUN rm -rf node_modules package-lock.json

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]