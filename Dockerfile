FROM node:current-alpine3.23
WORKDIR /app
COPY packages*.json .
RUN npm install
COPY . .
EXPOSE 3015
CMD ["node", "app.js"]
