select
{{ get_full_name(first_name='first_name', last_name='last_name') }} as full_name
from {{ ref('stg_jaffle_shop__raw_customers') }}
order by last_name desc
limit 10