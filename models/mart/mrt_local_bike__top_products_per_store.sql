SELECT 
  store_name, 
  category_name, 
  product_name,
  SUM(quantity_sold) AS quantity_sold,
  SUM(total_product_revenue_before_discount) as revenue_before_discount,
  SUM(total_product_discount_given) as total_discount_amount, 
  SUM(total_product_revenue_after_discount) as revenue_after_discount, 
  ROUND((SUM(total_product_discount_given)/SUM(total_product_revenue_before_discount)*100),2) AS global_discount_applied

FROM {{ref('int_local_bike__top_selling_products_per_store')}}
GROUP BY store_name, category_name, product_name
ORDER BY store_name, quantity_sold DESC