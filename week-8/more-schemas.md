Release 2:

Here we present a schema for information about a person with a one to one relationship between driver's license # and the additional information stored in the drivers license data table:

![One to One Schema] (https://github.com/schwartztal/phase-0/blob/master/week-8/imgs/one_to_one.png)

Release 4:

![Many to Many Schema] (https://github.com/schwartztal/phase-0/blob/master/week-8/imgs/many_to_many_groceries.png)

Reflect:

* What is a one-to-one database?
  One to one database relationship is when an row is bi-directionally unique between two tables. Said differently a one to one relationship means that both items can only have 1 of each other. In my example, I use a one to one relationship between a person and their drivers license. Each person only has one drivers license and converse each drivers license is only applicable to one person.

* When would you use a one-to-one database? (Think generally, not in terms of the example you created).
  You use a one-to-one relationship when you want to hold additional information about a particular item in a database but don't expect or need to use this information on a regular basis, so store it away in an alternate database and call it up only when needed. It's useful as a memory management technique more than anything else.

* What is a many-to-many database?
  Many to many databases basically covers the relationships that aren't covered by one-to-one and one-to-many. It's where an item can be related to more than one other item and itself be a part of many items. My favorite example here is Authors and Books. A single author can write many books, and a single book can have many authors.
* When would you use a many-to-many database? (Think generally, not in terms of the example you created).
You would use  many to many database when you want to maintain independent but related tables of information.
* What is confusing about database schemas? What makes sense?
It seems straightforward enough at the moment when we're just considering the theory of it, but will be interesting to see how we translate problems that we're trying to solve into database architectures composed of these schemas we've just learned about.
