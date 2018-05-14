docker run -it --rm -v `pwd`/sql:/sql mysqlclient \
    10.111.123.153 \
    dbown \
    rpCQfX83p9jprHZUzFtz \
    db_test \
    "select * from core_config_data"


