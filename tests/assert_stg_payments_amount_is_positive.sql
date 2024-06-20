with orders as (
    select * from {{ ref("stg_orders")}}
)
select
    order_id,
    sum(amount) as total_amount
from
    stg_orders
group by
    order_id
having
    total_amount < 0

    -- A test set up to make sure all orders are above zero