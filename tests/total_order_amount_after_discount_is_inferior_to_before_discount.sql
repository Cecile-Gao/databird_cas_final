SELECT 
  order_id, 
  ROUND(SUM(quantity*list_price),2) AS total_order_amount_before_discount, 
  ROUND(ROUND(SUM(quantity*list_price),2) - ROUND(SUM(discount*list_price),2),2) as total_order_amount_after_discount, 
FROM {{ref('stg_local_bike__order_items')}}
group by order_id
having total_order_amount_after_discount > total_order_amount_before_discount 