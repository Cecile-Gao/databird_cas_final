{% docs mrt_local_bike__top_products_per_store %}

This model generates a comprehensive view of opular products per store, including the following metrics and dimensions :
- **store_name** : The customer facoing store name. 
- **category_name** : The dategory the product belongs to. 
- **product_name** : The name of the product that was purchased.
- **quantity_sold** : The total quantity of the product sold by the store.
- **revenue_before_discount** : The total amount of sales before any discounts (full price)
- **total_discount_amount** : The total amount of discount given. 
- **revenue_after_discount** : The total amount of sales after all applied discounts.
- **global_discount_applied** : The global discount rate applied on daily revenue. 

This allows for analysis of sales performance per store location. 

{% enddocs %}