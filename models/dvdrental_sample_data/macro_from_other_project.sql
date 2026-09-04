with macro as (

    select {{ dbt_utils.star(from=ref('film'), except=["film_id"]) }} from {{ ref('film') }}
)
select * from macro