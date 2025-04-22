{% docs payment_method %}
    
One of the following values: 

| method         | definition                                       |
|----------------|--------------------------------------------------|
| credit_card    | Any credit card from the available banks         |
| gift_card      | Any official gift card provided by our team      |
| bank_transfer  | Any transfer from the available banks            |
| coupon         | Coupons from our sponsors Amazon, Mercado Libre  |

{% enddocs %}

{% docs payment_status %}
    
One of the following values: 

| status         | definition                                                           |
|----------------|----------------------------------------------------------------------|
| success        | The payment was successful and it had enough fonds                   |
| failed         | The payment was not successful due to lack of money or a server error|

{% enddocs %}