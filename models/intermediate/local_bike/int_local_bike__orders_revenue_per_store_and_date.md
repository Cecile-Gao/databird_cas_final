{% docs int_local_bike__orders_revenue_per_store_and_date %}

This model provides details about revenue, agregated at order_id level with details related to store and customer location. 
It combines data from orders, order_items, and customers tables.
It displays revenue data enriched with the following :
- **store_name**: The customer facing store name.
- **customer_state**: The state the customer is located at.
- **total_order_amount_before_discount**: The revenue per order before any discount.
- **total_order_discount**: The total amount discounted per the applied discount rate.
- **total_order_amount_after_discount**: The total amount per order after all discounts.

It provides a comprehensive view of revenue with 4 different dimensions for further agregation (store name, order_id, cust_state, int_local_bike__orders_revenue_per_store_and_date)
It aims at enabbling analysis of revenue per area / stores. 

{% enddocs %}