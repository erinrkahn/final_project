SELECT
    first_table.primarykey,
    first_table.column_name,
    second_table.primarykey,
    second_table.column_name
FROM first_table
INNER JOIN
    second_table
ON
    first_table.primarykey = second_table.foreignkey;