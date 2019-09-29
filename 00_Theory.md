# Theory


## Data
* Collection of a distinct small unit of information.
* Can be used in a variety of forms like text, numbers, media, bytes, etc.
* Stored in pieces of paper or electronic memory, etc.

## Database

* Organized collection of data, so that it can be easily accessed and managed.
* Main purpose of the database is to operate a large amount of information by storing, retrieving, and managing data.
* **Database handlers** create a database in such a way that only one set of software program provides access of data to all the users.
* Dynamic Websites

## Evolution of Databases

1. **File Based**
    * Good number of access methods.
    * Flatfiles
    * Requires extensive programming in a 3rd language.
2. **Hierarchical** Data Model
    * IBM's 1st IMS (Information Management System)
    * Files related in Parent/Child model.
    * Complicated - Lacked Structural Independence - Can't Handle Many-Many relationships.
3. **Network** Data Model
    * Files are related as owners and members, like to the common network model.
    * **Components**
        1. **Network schema** (Database organization)
        2. **Sub-schema** (views of database per user)
        3. **Data management** language (procedural)
4. **Relational Database**
    * **E.F.Codd**
    * **Instance** is a table with rows or columns
    * **Schema** specifies the structure like name of the relation, type of each column and name.
    * Set theory and predicate logic.
    * 1995
    * **Properties**
        1. Atomicity
        2. Consistency
        3. Durability
        4. Integrity
        5. Concurrency
        6. Query Processing
5. **Cloud** Database
    * Lower cost - Automated - Increased Availability.
6. **NoSQL** Databases
    * Useful for a large set of distributed data.
    * Examples
        * MongoDB, CouchDB, Cloudant (Document-based)
        * Memcached, Redis, Coherence (key-value store)
        * HBase, Big Table, Accumulo (Tabular)
    * Advantages
        * Highly Scalable & Available
    * Disadvantages
        * Opensource (No reliable standard)
        * Difficult to Manage
        * GUI not easily available
        * No powerful backup approach.
7. **Object Oriented** Databases
    * Data in the form of object and classes.
8. **Graph** Databases
    * A NoSQL database.
    * A graphical representation of data.
    * Contains nodes and edges
    * A **node** represents an **entity**, and each **edge** represents a **relationship** between two nodes.
    * Beneficial for searching the relationship between data
    * Useful when the database contains a complex relationship and dynamic schema.
    * Applications
        * Supply Chain Management
        * IP Telephony Source Detection.
9. In Memory Databases

## DBMS
* Software which is used to store and retrieve the database.
* Advantage
    1. Controls Redundancy
    2. Data Sharing
    3. Backup
    4. Multiple UI
* Disadvantages
    1. Size
    2. Cost
    3. Complexity

## RDBMS

* **Components**
    1. Table
    2. Record / Tuple
    3. Field / Column Name / Attribute
    4. Instance
    5. Schema
    6. Keys

* **Data Integrity Types**
    1. **Entity Integrity**
        * There should be no duplicate rows in a table.
    2. **Domain Integrity**
        * Enforces valid entries for a given column 
        * By restricting the type, the format, or the range of values.
    3. **Referential Integrity**
        * Rows cannot be deleted, which are used by other records.
    4. **User Defined Integrity**
        * Specific business rules that are defined by users.


# DBMS vs. RDBMS

| DBMS                                            | RDBMS                                                                                           |
| ----------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| Data as file                                    | data in a tabular form                                                                          |
| Hierarchial / Navigational Form                 | Primary Keys & Tables                                                                           |
| Normalization is Not Present                    | Normalization is Present                                                                        |
| Not Apply any Security                          | Defines Integrity Constant                                                                      |
| No relationship between tables                  | Relationship between tables                                                                     |
| Uniform methods of access to stored information | Tabular structure of the data and a relationship between them to access the stored information. |
| Does not support distributed database.          | Supports distributed database.                                                                  |
| Deal with small data. - user.                   | Handle large amount of data - muti user                                                         |
| File systems, xml etc.                          | MySQL, Postgre, Sql Server, Oracle etc.                                                         |
    
