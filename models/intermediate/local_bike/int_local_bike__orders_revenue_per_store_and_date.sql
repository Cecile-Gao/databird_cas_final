SELECT   
  store_name, 
  o.order_id,
  cust_state, 
  order_date,
  order_status,
  ROUND(SUM(quantity*list_price),2) AS total_order_amount_before_discount, 
  ROUND(SUM(discount*list_price),2) as total_order_discount,
  ROUND(ROUND(SUM(quantity*list_price),2) - ROUND(SUM(discount*list_price),2),2) as total_order_amount_after_discount, 
FROM {{ref('stg_local_bike__orders')}}  as o 
left join {{ref('stg_local_bike__customers')}} as c 
  ON o.customer_id = c.customer_id 
LEFT JOIN {{ref('stg_local_bike__stores')}} as s
  ON o.store_id = s.store_id
LEFT JOIN {{ref("stg_local_bike__order_items")}}as oi
  ON oi.order_id = o.order_id 
GROUP BY store_name, order_id, cust_state, order_date, order_status
--order by store_id, order_date asc 