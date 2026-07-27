echo "*************************************"
echo "Creating the postegres DB for Backstage"
echo "*************************************"

docker pull postgres:17.0-bookworm

docker run -d \
  --name backstage-postgres \
  --restart=always \
  -p 5432:5432 \
  -e POSTGRES_USER=backstage \
  -e POSTGRES_PASSWORD=backstage_secret \
  -e POSTGRES_DB=backstage \
  -v backstage-postgres-data:/var/lib/postgresql/data \
  postgres:17.0-bookworm

docker ps | grep backstage-postgres

echo "*************************************"
echo "Creating .env"
echo "*************************************"

echo "POSTGRES_HOST=127.0.0.1" > .env
echo "POSTGRES_PORT=5432" >> .env
echo "POSTGRES_USER=backstage" >> .env
echo "POSTGRES_PASSWORD=backstage_secret" >> .env

yarn add pg
