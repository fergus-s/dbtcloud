select
    id as customer_id,
    first_name,
    last_name

from {{ source('fergus_jaffle_shop', 'customers') }}