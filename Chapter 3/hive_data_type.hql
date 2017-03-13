--Apache Hive Essentials
--Chapter 03 - Hive Data Types
--create table using ARRAY,MAP,STRUCT composite data types:

create TABLE employee
(
name string,
work_place ARRAY<string>,
sex_age STRUCT<sex:string,age:int>,
skills_score MAP<string,int>,
depart_title MAP<string,ARRAY<string>>
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
COLLECTION ITEMS TERMINATED BY ','
MAP KEYS TERMINATED BY ':';

--Verify the table's creation
jdbb:hive2://>!table employee

--Load data into the table
jdbc:hive2://>> LOAD DATA LOCAL INPATH '/home/hive/employee.txt' OVERWRITE INTO TABLE employee;

--Query all the rows in the table
jdbc:hive2://>SELECT * FROM employee;

--Query the whole array and each array colume in the table:
jdbc:hive2://> SELECT work_place FROM employee;

--Query the whole struct and each struct colume in the table:
jdbc:hive2://> SELECT sex_age FROM employee;
jdbc:hive2://> SELECT sex_age.sex,sex_age.age FROM employee;

--Query the whole map and each map column in the table
jdbc:hive2://> SELECT skills_score FROM employee;
jdbc:hive2://>SELECT name,skills_score['DB'] as DB,skills_score['Perl'] as Perl,skills_score['Python'] as Python,skills_score['Sales'] as Sales,skills_score['HR'] as HR FROM employee;