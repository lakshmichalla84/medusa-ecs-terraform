FROM node:20-alpine


WORKDIR /app


COPY . .


RUN npm install && \
    npm install @medusajs/workflows && \
    npm install loader 


RUN npx medusa build


EXPOSE 9000


CMD ["npx", "medusa", "start"]
