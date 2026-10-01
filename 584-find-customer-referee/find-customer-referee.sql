# Write your MySQL query statement below
SELECT name FROM Customer WHERE referee_id IS null OR NOT referee_id = 2;