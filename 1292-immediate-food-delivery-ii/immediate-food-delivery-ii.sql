# Write your MySQL query statement below
SELECT ROUND(SUM(d.order_date = d.customer_pref_delivery_date) * 100/COUNT(*), 2) AS immediate_percentage
FROM Delivery d
WHERE (d.customer_id, d.order_date) IN (
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
)