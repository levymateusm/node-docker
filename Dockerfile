# syntax=docker/dockerfile:1

FROM node:18-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "yarn.lock", "./"]

# This works exactly the same as if we were running npm install locally on our machine,
# but this time these Node modules will be installed into the node_modules directory inside our image.
RUN yarn install --production

COPY . .

CMD ["node", "src/server.js"]