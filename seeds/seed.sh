#!/bin/bash

# Exit script on any error
set -e

#docker-compose exec directus

# Apply seeds
npx directus data apply ./seeds/00_directus_settings.yml
npx directus data apply ./seeds/01_directus_roles.yml
npx directus data apply ./seeds/02_languages.yml
npx directus data apply ./seeds/03_blog.yml
npx directus data apply ./seeds/04_products.yml

# Add more commands as needed
