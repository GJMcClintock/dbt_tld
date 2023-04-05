{% macro parse_tld(string) -%}
    {{ dbt.split_part(string, "'.'", -1) }}
{%- endmacro %}