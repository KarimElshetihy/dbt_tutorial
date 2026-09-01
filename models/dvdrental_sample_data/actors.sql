with src_actors as (
    
    select * from {{ source('dvdrental_sample_data', 'actor') }}
)

select * from src_actors