select
    customer_id, 
    first_name as cust_first_name, 
    last_name as cust_last_name, 
    phone as cust_phone_number, 
    email as cust_email, 
    street as cust_address, 
    city as cust_city,
    state as cust_state, 
    zip_code as cust_zip_code
from {{ source('Local_bike', 'customers') }}
