# Data Types
[Data Types](https://www.javatpoint.com/sql-data-types)

* **BIT(Size)**
    * Its size can be 1 to 64
    * The default value is 1.
* **INT** 
    * Can be signed or unsigned.
    * 11 Digits Width
* **TINYINT**
    * -128 to 127
    * 0 - 255
    * 4 Digits Width
* **SMALLINT**
    * 5 digits wide
    * 0-65536
* **MEDIUMINT**
    * 9 digits wide
* **BIGINT**
    * 20 digits wide

* **FLOAT(m,d)**
    * Cannot be unsigned
    * m = display length
    * d = number of decimals
    * Default (10,2)
    * Max decimal precision of 24 places.
* **DOUBLE(m,d)**
    * Defaults to (16,4)
    * Precision can go upto 53 places.
    * a.k.a - Real
* **DECIMAL(m.d)**
    * Unpacked Floating point number
    * Cannot be unsigned.
    * Each decimal point is 1 byte
    * Need to specify m,d
    * a.k.a - Numeric

* **DATE & TIME**
    * **DATE**
        * '1000-01-01' to '9999-12-31'.
    * **DATETIME**
        * '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.
    * **TIMESTAMP(m)**
        * '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' TC.
    * **TIME**
        * '-838:59:59' to '838:59:59'.
    * **YEAR[(2|4)]**
        *  2 digits or 4 digits.
        * Defaults to 4 Digits

* **STRING DATA TYPES**
    * **CHAR(size)** 
    *     - Maximum size of 255 
    *     - Size is the number of characters to store.
    *     - Fixed Length Strings
    *     - Space padded on right to equal size characters.
    * **VARCHAR(size)**   - Variable length string
    * **TINYTEXT(size)**  - 	Maximum size of 255
    * **TEXT(size)**      - Maximum size of 65,535
    * **MEDIUMTEXT(size)** - 	Maximum size of 16,777,215
    * **LONGTEXT(size)**  - Maximum size of 4GB
    * **BINARY(size)** - Equal to CHAR() but stores binary byte strings
    * **VARBINARY(size)** - Equal to VARCHAR() but stores binary byte strings.
    * **ENUM(val1, val2, val3,...)** - Used when a string object having only one value, chosen from a list of possible values.
    * **SET( val1,val2,val3,....)** - 

* **LARGE OBJECT DATA TYPES**
    * **TINYBLOB**    - Maximum size of 255 bytes.
    * **BLOB(size)**  - Maximum size of 65,535 bytes.
    * **MEDIUMBLOB**  - Maximum size of 16,777,215 bytes.
    * **LONGTEXT**    - Maximum size of 4gb - 4,294,967,295 characters.


## Primary Key

* Single / Combination of minimum number of fields that contain a unique record.
* Cannot be null.
* Can only have a single primary key.

# Literals

1. **String Literals**
    * String literals are in single quotes (') or double quotes (").

2. **Number Literals**
    * Number literals are positive or negative numbers.

