docker run -it --rm -v `pwd`/sql:/sql mysqlclient \
    10.11.123.153 \
    occdbs_own \
    rpCQfX83p9jprHZUzFtz \
    db_test \
    "select * from core_config_data"


