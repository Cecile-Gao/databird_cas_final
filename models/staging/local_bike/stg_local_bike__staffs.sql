select 
    staff_id, 
    first_name as staff_first_name, 
    last_name as staff_last_name, 
    email as staff_email, 
    phone as staff_phone_number, 
    active as staff_status, 
    store_id as staff_store_id, 
    manager_id as staff_manager_id
from {{ source('Local_bike', 'staffs') }}