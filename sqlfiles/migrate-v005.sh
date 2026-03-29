#!/bin/bash
# Insert admin user using environment variables (no hardcoded secrets)
if [ -n "$ADMIN_EMAIL" ] && [ -n "$ADMIN_PASSWORD" ]; then
  mysql -u root -p"${MYSQL_ROOT_PASSWORD}" ynov_ci -e \
    "INSERT INTO admin (email, password) VALUES ('${ADMIN_EMAIL}', '${ADMIN_PASSWORD}');"
fi
