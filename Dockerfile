FROM directus/directus:latest

USER root

RUN corepack enable \
    && corepack prepare pnpm@8.9.0 --activate

COPY ./package.json ./package.json

USER node

RUN pnpm install

COPY ./schema-sync ./schema-sync