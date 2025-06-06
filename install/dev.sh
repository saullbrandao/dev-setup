yay -S --needed --noconfirm php php-sqlite php-pgsql composer nodejs-lts-jod npm go docker docker-compose

# PHP config
# Remove existing configuration files
sudo rm -f /etc/php/conf.d/sqlite.ini
sudo rm -f /etc/php/conf.d/pgsql.ini

# Create new configuration files
echo -e "extension=sqlite3\nextension=pdo_sqlite" | sudo tee /etc/php/conf.d/sqlite.ini >/dev/null
echo -e "extension=pgsql\nextension=pdo_pgsql" | sudo tee /etc/php/conf.d/pgsql.ini >/dev/null

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Start docker service
sudo systemctl restart docker.service

# Enable docker service
sudo systemctl enable docker.service
