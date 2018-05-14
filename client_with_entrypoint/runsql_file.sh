docker run -it --rm -v `pwd`/sql:/sql mysqlclient \
  10.1.23.153 \
  occdbs_own \
  rpCQfX83p9jprHZUzFtz \
  occdbs_db_test \
  file /sql/select.sql
