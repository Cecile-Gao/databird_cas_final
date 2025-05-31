{% docs mrt_local_bike__daily_store_sales %}

This model generates a daily summary of sales per store, including the following metrics:
- **store_name** : The customer facoing store name. 
- **order_date** : The date the order was placed at. 
- **total_nb_orders** : The total number of orders placed on the related date.
- **total_sales_undiscounted** : The total amount of sales before any discounts (full price)
- **total_sales_discounted** : The total amount of sales after all applied discounts.
- **total_discount_given** : The total amount of discount given. 
- **global_daily_discount_percentage** : The global discount rate applied on daily revenue. 

This allows for analysis of performance by account manager and region.

{% enddocs %}