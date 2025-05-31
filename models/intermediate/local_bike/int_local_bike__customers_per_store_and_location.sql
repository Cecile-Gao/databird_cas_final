with cust_table AS (
  SELECT 
    count(*) as total_customers, 
    cust_state, 
    cust_city
  FROM {{ref('stg_local_bike__customers')}}
  group by cust_state, cust_city)

SELECT 
  CONCAT(store_name,"_", cust_city) as store_cust_city, 
  store_state,  
  store_city, 
  store_name, 
  cust_table.cust_city as cust_city,
  total_customers
FROM  {{ref('stg_local_bike__stores')}} as s
LEFT JOIN cust_table 
ON cust_table.cust_state = s.store_state