{{ config(materialized='table') }}

with src_rental as (

    select * from {{ source('dvdrental_sample_data', 'rental') }}
)

select * from src_rental
