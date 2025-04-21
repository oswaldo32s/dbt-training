with orders as (
    select
        order_id,
        customer_id,
        order_date
    from {{ ref('stg_jaffle_shop__orders') }}
),

order_payments as (
    select
        order_id,
        sum(case when payment_status = 'success' then amount end) as amount
    from {{ ref('stg_stripe__payments') }}
    group by 1
)

select
    o.order_id,
    o.customer_id,
    o.order_date,
    op.amount
from orders o
left join order_payments op
    on o.order_id = op.order_id