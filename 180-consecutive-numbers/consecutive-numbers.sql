# Write your MySQL query statement below
with cte as (
    SELECT num, 
    lead(num, 1) over() num1,
    lead(num, 2) over() num2
    from Logs
)

SELECT DISTINCT num AS ConsecutiveNums FROM cte WHERE (num = num1) AND (num = num2)

-- LEAD() ka matlab hai "aage wali row ka value dikhao", aur OVER(ORDER BY...) SQL ko batata hai rows ko kis order mein dekhna hai.