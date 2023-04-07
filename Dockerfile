FROM node:16.17.0

ENV KITS_API https://private-8bdaa-solfacilecostorecatalogcoreservice.apiary-mock.com
ENV PORT 8080

WORKDIR /app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY ./.meshrc.yml ./

RUN yarn build

EXPOSE 8080

CMD ["yarn", "start"]
