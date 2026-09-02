{% docs kdrama_reviews %}

# About Dataset

😍 **NEW Korean Drama Dataset** - a spinoff of *Top 100 Korean Drama (MyDramaList)* 🥳

Go checkout the dataset using this link: [Kaggle Dataset Link](https://www.kaggle.com/datasets/chanoncharuchinda/top-100-korean-drama-mydramalist)

> **IMPORTANT NOTE:** I made these datasets for educational purposes. I want people who share a similar interest and obsession with Korean Dramas to have access to this data to begin their exploration. Have fun! Also, working with these two datasets simultaneously might be helpful and worth exploring.

---

## Project and Data Information

A while back, I worked on a dataset called *Top 100 Korean Drama (MyDramaList)*. I decided to work on a similar project again. For this project, I have generated three files:

*   **korean_drama.csv:** 1,752 Korean dramas to be explored.
*   **recommendations.csv:** A table containing the recommendations given to different dramas. These recommendations are a product of the MyDramaList community.
*   **review.csv:** Reviews given to the dramas by users on the website.
*   **wiki_actor.csv:** Information regarding the actors (mainly the dramas they were part of and their roles).

⚠️ **DISCLAIMER:** I have removed the usernames of the reviewers from the dataset. I used a generated `user_id` field instead for easier partitioning.

---

## What is MyDramaList.com?

According to MyDramaList.com:
> *"MyDramaList.com is a community-based project which provides Asian drama & movie fans."*

On the website, fans can "create their very own drama watchlists, rate dramas and films, write reviews" and participate in many more engaging activities. This dataset is different from the previous one as there is a larger collection of data on Korean dramas, reviews, and actors.

---

## Acknowledgements

This data is taken from the website [MyDramaList Top Korean Dramas](https://mydramalist.com/shows/top_korean_dramas?page=1). This is my first time doing web scraping. I wouldn't have been able to do it without the help of StackOverflow and YouTube.

---

## Inspiration

Similar inspiration to the previous dataset: 
> *"I have been a huge fan of Korean Dramas and K-pop since high school. It is fun to integrate what I love with my interest toward data science."*

---

## Recommendations and Suggestions

If you would like to get more data on Korean dramas, please let me know. I can get more information on dramas prior to 2015 as well. Please leave any recommendations and suggestions (can't stop learning!). 

Thank you in advance!


{% enddocs %}

{% docs drama_name %}
The title of the Korean drama. o=
{% enddocs %}

{% docs screenwriter %}
The screenwriter credited for the Korean drama.
{% enddocs %}

{% docs type %}
The content type of the title, such as drama or movie.
{% enddocs %}

{% docs tot_eps %}
The total number of episodes in the Korean drama.
{% enddocs %}

{% docs duration %}
The runtime of each episode.
{% enddocs %}

{% docs rank %}
The ranking of the Korean drama in the source dataset.
{% enddocs %}

{% docs story_score %}
The review score for the drama's story.
{% enddocs %}

{% docs acting_cast_score %}
The review score for the drama's acting and cast.
{% enddocs %}

{% docs music_score %}
The review score for the drama's music.
{% enddocs %}

{% docs rewatch_value_score %}
The review score for the drama's rewatch value.
{% enddocs %}

{% docs overall_score %}
The overall review score for the drama.
{% enddocs %}

<!-- This can be referenced in many .yml files dependding on the project structure, so you only write it once and use it many times. -->


