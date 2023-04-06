FROM node:16.17.0

ARG kits_api

ENV KITS_API $kits_api

WORKDIR /app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY ./.meshrc.yml ./

RUN yarn build

EXPOSE 4000

CMD ["yarn", "start"]
