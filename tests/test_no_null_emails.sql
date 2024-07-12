
with test as (

    select *
    from {{ ref('dim_customers') }}
    where DSC_EMAIL_ADDRESS  is null

)

select count(*)
from test