# Regular Expressions

## NOT LIKE

* returns the list of items which are not like the pattern.

        SELECT name
        FROM table_name
        WHERE column_name NOT LIKE 'pattern';

## NOT

        SELECT name
        FROM table_name
        WHERE column_name
        NOT regexp 'pattern';

## REGEXP

* returns the items which are matching with the patterns.

        SELECT name
        FROM table_name
        WHERE column_name REGEXP 'pattern';

## INSTR()

* It returns the index value of the substring from the given string.
* Returns 0 if no match is found else it returns 1.

        SELECT REGEXP_INSTR('str', 'pattern', ['position']);

        SELECT REGEXP_INSTR('BCA jhon', 'BCA'); 
                    
                                    # Return Index: 1


        select REGEXP_INSTR('BCA jhon', 'BCA', 1)  

                                    # Returns Truth: 1 / Else False: 0

## LIKE() - FIND

* Compares the given strings.
* Returns 1 if the strings are same else it returns 0.

        SELECT REGEXP_LIKE(str1, str3);

        SELECT REGEXP_LIKE('MCA', 'mca');  

                                    # Returns Truth: 1


        SELECT REGEXP_LIKE('MCA', 'bca');  

                                    # Returns False: 0

## REPLACE()

* Replaces the given string character by matching the characters.

        SELECT REGEXP_REPLACE('str', 'character', 'new_character');

        SELECT REGEXP_REPLACE('BCA', 'B', 'M');  

## SUBSTR()

* Returns the substring from the given string.

        SELECT REGEXP_SUBSTR('str', 'match_type', occurrence, position);

        SELECT REGEXP_SUBSTR('java t point', '[a-z]+', 2, 3);  

                                    # Returns: point

        SELECT REGEXP_SUBSTR('my sql function', '[a-z]+', 1, 3);

                                    # Returns: function