SELECT  
  CONCAT(store_name, "_", product_name) as store_product_id, 
  store_name,
  product_name, 
  category_name, 
  brand_name, 
  SUM(quantity) AS quantity_sold,
  ROUND(SUM(quantity*oi.list_price),2) AS total_product_revenue_before_discount, 
  ROUND(SUM(discount*oi.list_price),2) as total_product_discount_given,
  ROUND(ROUND(SUM(quantity*oi.list_price),2) - ROUND(SUM(discount*oi.list_price),2),2) as total_product_revenue_after_discount, 
FROM {{ref('stg_local_bike__order_items')}} as oi
LEFT JOIN {{ref("stg_local_bike__products")}}as p 
  ON oi.product_id = p.product_id
LEFT JOIN {{ref("stg_local_bike__orders")}} as o
  ON o.order_id = oi.order_id
LEFT JOIN {{ref('stg_local_bike__stores')}} as s
  ON o.store_id = s.store_id
LEFT JOIN {{ref('stg_local_bike__categories')}}as c 
  ON p.category_id  = c.category_id
LEFT JOIN {{ref('stg_local_bike__brands')}}as b
  ON b.brand_id = p.brand_id
group by store_product_id, store_name, product_name, category_name, brand_name
--order by store_name, quantity_sold DESC