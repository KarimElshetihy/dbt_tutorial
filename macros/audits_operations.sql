{% macro insert_audit(action) %}
    insert into db_demo.public.dbt_audits (audit_type) values ('{{ action }}'); commit;
{% endmacro %}