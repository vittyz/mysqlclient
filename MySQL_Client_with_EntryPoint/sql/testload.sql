LOAD DATA LOCAL INFILE  '/sql/test.csv' into table test
  FIELDS TERMINATED BY ''
  LINES TERMINATED BY '\n%%\n' (col);

