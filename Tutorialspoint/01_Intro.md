# Introduction

* A database is a separate application that stores a collection of data. 
* Each database has one or more distinct APIs for creating, accessing, managing, searching and replicating the data it holds.


## RDBMS

*  In RDBMS relations established using
    * Primary Keys
    * Foreign Keys

#### Terminology

* Database - Collection of tables, with related data.
* Table - A matrix with data.
* Column - Contains data of one and the same kind
* Row - A row (= tuple, entry or record) is a group of related data.
* Redundancy - Storing data twice, redundantly to make the system faster.
* Primary Key - 
    * A primary key is unique. 
    * A key value can not occur twice in one table. 
    * With a key, you can only find one row.
* Foreign Key
    * A foreign key is the linking pin between two tables.
* Compound Key
    * A key that consists of multiple columns, because one column is not sufficiently unique.
* Index
    * An index in a database resembles an index at the back of a book.
* Referential Integrity
    * Makes sure that a foreign key value always points to an existing row.


#### MySQL

* Open Source GPL
* SQL DL
* Supports > 50 mn rows in a table
* Default file  size limit for a table - 4 GB
    * Can be theoreticLLy increased to - 8 mn TB