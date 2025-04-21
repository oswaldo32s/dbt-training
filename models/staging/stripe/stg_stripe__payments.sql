select
    id as payment_id,
    orderId as order_id,
    paymentmethod as payment_method,
    status as payment_status,
    amount / 100 as amount,
    created as created_date
from {{ source('stripe', 'stripe_payments')}}