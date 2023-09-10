FROM directus/directus:10.6.1

USER root
RUN corepack enable && corepack prepare pnpm@8.6.0 --activate && chown node:node /directus
USER node

RUN pnpm install directus-extension-tags-m2m-interface