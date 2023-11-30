FROM directus/directus:latest

USER root

# INSTALL 3RD PARTY EXTENSIONS
# Activate Corepack and pepare pnmp
RUN corepack enable \
    && corepack prepare pnpm@8.9.0 --activate

USER node
RUN pnpm install directus-extension-tags-m2m-interface@latest \
    directus-extension-field-actions@latest \
    directus-extension-computed-interface@latest \
    directus-extension-group-tabs-interface@latest \
    directus-extension-admin-panels@latest