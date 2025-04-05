# Dockerfile
FROM node:18

WORKDIR /app

COPY . .

RUN yarn install && yarn build

EXPOSE 9000

CMD ["yarn", "start"]
