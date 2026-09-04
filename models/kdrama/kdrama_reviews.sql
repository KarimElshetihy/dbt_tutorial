with kdrama_reviews as (
    select * from {{ ref('kdrama_ephemeral') }}
)

select * from kdrama_reviews
