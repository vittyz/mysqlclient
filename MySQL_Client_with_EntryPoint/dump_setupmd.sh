cd /usr/home/spd/woravitp/mysql

docker run -it --rm -v /usr/home/spd/woravitp/mysql/sql:/sql mysqlclient 10.1.23.153 occdbs_own rpCQfX83p9jprHZUzFtz occdbs_db_test  dump setup_module.sql  setup_module  --no-create-info


cp sql/setup_module.sql ../wwwroot

