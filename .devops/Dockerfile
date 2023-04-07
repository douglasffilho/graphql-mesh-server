FROM node:16.17.0

ARG kitsapi

ENV KITS_API $kitsapi

WORKDIR /app

COPY ../.git ./.git
COPY ../package.json ./
COPY ../yarn.lock ./

RUN yarn install

COPY ../.meshrc.yml ./

RUN yarn build

EXPOSE 4000

CMD ["yarn", "start"]
