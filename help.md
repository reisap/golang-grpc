How to run this program : 
1. Run docker postgres 16-alpine

`
docker run --name postgres16 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:16
`

2. migration database in golang ubuntu

`
curl -s https://packagecloud.io/install/repositories/golang-migrate/migrate/script.deb.sh | sudo bash &&
sudo apt-get update && 
sudo apt-get install migrate
`

3. migrate command

`
migrate create -ext sql -dir db/migration -seq init_schema
`

4. using command make

`
make (command)
make migrateup
make postgres
`

`
version: "1"
packages:
- name : "db"
  path: "./db/sqlc"
  schema: "db/migration/"
  queries: "db/query/"
  engine: "postgresql"
  emit_json_tags: true
  emit_prepared_queries: false
  emit_interface: false
  emit_exact_table_names: false
`