SELECT 
  store_name, 
  order_date, 
  count(distinct order_id) as total_nb_orders, 
  ROUND(sum(total_order_amount_before_discount),2) as total_sales_undiscounted, 
  ROUND(sum(total_order_amount_after_discount),2) as total_sales_disounted,
  ROUND(sum(total_order_discount),2) as total_discount_given, 
  ROUND((ROUND(sum(total_order_discount),2)/ROUND(sum(total_order_amount_before_discount),2))*100,2) AS global_daily_discount_percentage_applied
FROM {{ref('int_local_bike__orders_revenue_per_store_and_date')}}
group by store_name, order_date
order by store_name, order_date ASC