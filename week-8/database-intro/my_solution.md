RELEASE 5:

1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7;
6. SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%Central';
10. SELECT regions.region_name, states.state_name FROM regions INNER JOIN states ON regions.id = states.region_id  ORDER BY region_id ASC;

RELEASE 6:
[Clueless Schema] (https://github.com/schwartztal/phase-0/blob/master/week-8/database-intro/Clueless%20Schema.png)

Reflection

What are databases for?
Databases are for storing sets of related information in a structure that is more easily accessible and more computationally efficient than a hash or array.

What is a one-to-many relationship?
A one-to-many relationship is when a piece of information is used many times within a table but is not unique to each row in the table and could be abstracted to a seperate table. For example if we had table of celebs with information about their age, name, twitter handle and medium: medium (film, music, tv, etc) is a one-to-many relationship.

What is a primary key? What is a foreign key? How can you determine which is which?
Primary key is the integer identifier in the table for a one-to-many relationship set of information. Foreign key is that same integer identifier used in place of the value itself in the (typically larger) table which holds other information.

How can you select information out of a SQL database? What are some general guidelines for that?
The simplest statement of selection for information from a SQL database is: SELECT column_1, column_2 FROM table; A bunch of modifiers can be added to the statement to change how information is selected or displayed.
