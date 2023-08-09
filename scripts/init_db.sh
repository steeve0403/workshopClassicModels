echo "** Default SQL user and database creation"

mysql -u root -p$DB_ROOT_PASSWORD --execute \
"CREATE DATABASE IF NOT EXISTS $DB_DATABASE;
GRANT ALL PRIVILEGES ON $DB_DATABASE.* TO '$DB_USERNAME'@'%';"

echo "** Finished default SQL user and database creation"