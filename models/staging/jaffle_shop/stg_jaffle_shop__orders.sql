select
    id as order_id,
    user_id as customer_id,
    order_date,
    status as order_status

from default.jaffle_shop_orders