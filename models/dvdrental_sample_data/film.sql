{{ config(materialized='table') }}

with src_film as (

    select * from {{ source('dvdrental_sample_data', 'film') }}
)

select * from src_film
