# Write your MySQL query statement below
with abc AS (
    SELECT num,
    LEAD(num, 1) over() num1,
    LEAD(num, 2) over() num2
    FROM Logs
)

SELECT DISTINCT num AS ConsecutiveNums FROM abc WHERE num = num1 AND num = num2

-- LEAD() ka matlab hai "aage wali row ka value dikhao", aur OVER(ORDER BY...) SQL ko batata hai rows ko kis order mein dekhna hai.