{% test is_not_drama(model, column_name) %}

select *
from {{ model }}
where lower({{ column_name }}) <> 'drama'

{% endtest %}