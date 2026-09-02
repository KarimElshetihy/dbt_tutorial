with reviews as (
select * from {{ ref('reviews') }}
),
kdrama as(
select * from {{ ref('korean_drama') }}
),
kdrama_reviews as (
select 
k.drama_name,k.screenwriter,k.type,k.tot_eps,k.duration,k.rank,
r.story_score,r.acting_cast_score,r.music_score,r.rewatch_value_score,r.overall_score
from reviews r inner join kdrama k on r.title = k.drama_name
)

select * from kdrama_reviews