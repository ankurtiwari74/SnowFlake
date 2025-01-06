CREATE OR REPLACE DATABASE EXERCISE_DB;

USE DATABASE EXERCISE_DB;

CREATE OR REPLACE TABLE CUSTOMERS (
    ID INT,
    first_name varchar,
    last_name varchar,
    email varchar,
    age int,
    city varchar
);

SELECT * FROM CUSTOMERS;

COPY INTO CUSTOMERS
FROM s3://snowflake-assignments-mc/gettingstarted/customers.csv
FILE_FORMAT = (
    TYPE = CSV,
    FIELD_DELIMITER = ",",
    SKIP_HEADER = 1
);

SELECT COUNT(*) FROM CUSTOMERS;

DROP TABLE IF EXISTS CUSTOMERS;

DROP DATABASE IF EXISTS EXERCISE_DB;