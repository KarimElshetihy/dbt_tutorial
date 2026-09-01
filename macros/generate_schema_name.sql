-- This macro generates a schema name based on the provided schema_name argument. and will override the default macro that generates the schema name.
{%- macro generate_schema_name(schema_name, mode) -%}
{% set default_schema = target.schema %}

{% if schema_name is none %}
    {{ default_schema }}
{% else %}
    {{ schema_name }}

{% endif %}
{%- endmacro -%}

