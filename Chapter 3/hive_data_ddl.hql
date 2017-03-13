--create the database without checking whether the database already exists:
jdbc:hive2://> CREATE DATABASE myhivebook;
--create the database and check whether the database alread exits:
jdbc:hive2://> CREATE DATABASE IF NOT EXISTS myhivebook;

--Create the database with location,comments and metadata information:

jdbc:hive2://> CREATE DATABASE IF NOT EXISTS myhivebook COMMENT 'hive database demo' LOCATION '/user/hive/' WITH DBPROPERTIES('creator'='rakib','data'='2017-03-13');

--Show and describe the database with wildcards:

jdbc:hive2://> SHOW DATABASES;
jdbc:hive2://> SHOW DATABASES LIKE 'my.*';
jdbc:hive2://> DESCRIBE DATABASE default;