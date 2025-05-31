select
    CONCAT(store_id,'_',product_id) as store_product_id, 
    store_id, 
    product_id,
    quantity as product_stock_quantity
from {{ source('Local_bike','stocks') }}