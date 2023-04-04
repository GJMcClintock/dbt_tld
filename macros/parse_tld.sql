{% macro parse_tld(string) -%}
    {{ return(adapter.dispatch('parse_tld', 'dbt_tld')(string)) }}
{%- endmacro %}

{% macro default__parse_tld(string) %}
    split_part({{string}},'.',-1)
{% endmacro %}