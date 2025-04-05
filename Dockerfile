# Dockerfile

FROM node:20  # 🔥 this is the fix!

WORKDIR /app

COPY . .

RUN rm -f package-lock.json  # optional: remove lock file if switching from npm to yarn

RUN yarn install
RUN yarn build

EXPOSE 9000

CMD ["yarn", "start"]
