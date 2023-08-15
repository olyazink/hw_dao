SELECT product_name
FROM hw_netology_dao.orders o
JOIN hw_netology_dao.customers c ON o.customer_id = c.id
WHERE c.name LIKE :name;