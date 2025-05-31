SELECT 
  order_id, 
  SUM(quantity*list_price) AS total_order_amount
 FROM {{ref('stg_local_bike__order_items')}}
 group by order_id
 having total_order_amount < 0