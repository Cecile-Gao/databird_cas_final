{% docs int_local_bike__top_selling_products_per_store %}

This model provides details about product popularity, agregated per product name at store level. 
It combines data from orders, order_items, store, products, customers and brands tables. 
It displays the following dimensions and metrics :
- **store_name**: The customer facing store name.
- **product_name**: The name of the purchased product.
- **category_name**: The category the purchased product belongs to.
- **brand_name**: The name of the brand the product is stamped with.
- **quantity_sold**: The total number of sold items of the product per store
- **total_product_revenue_before_discount**: The total revenue the product generated for the related store, before any discount (full price)
- **total_product_discount_given**: The total discount amount that was deducted from the full price for each specific product per store
- **total_product_revenue_after_discount**: The total revenue the product generated for the related store, after all discount were applied.

It provides a comprehensive view of revenue per stores, and aims at enabling deep dive into product popularity and revenue per location.

{% enddocs %}