# Write your MySQL query statement below
# select the ids of peod which are both low fat and recyc & return the result table in any ord.
SELECT product_id FROM Products WHERE low_fats = 'Y' AND recyclable = 'Y'