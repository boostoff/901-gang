#4.1
customer_id <> 5
AND (amount > 8 OR date(payment_date) = '2005-08-23')
#4.2
customer_id = 5 AND
NOT (amount > 6 OR date(payment_date) = '2005-06-19')


