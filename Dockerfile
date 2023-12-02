FROM directus/directus:latest

USER root

RUN corepack enable \
    && corepack prepare pnpm@8.9.0 --activate

USER node

RUN pnpm install directus-extension-tags-m2m-interface@latest
RUN pnpm install directus-extension-field-actions@latest
RUN pnpm install directus-extension-computed-interface@latest
RUN pnpm install directus-extension-group-tabs-interface@latest
RUN pnpm install directus-extension-admin-panels@latest
RUN pnpm install directus-extension-schema-sync@latest
RUN pnpm install directus-extension-seed@latest
#RUN pnpm install directus-extension-seo@latest

COPY ./schema-sync ./schema-sync