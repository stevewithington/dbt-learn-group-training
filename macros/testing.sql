{% macro testing() %}
    {% set users_sql='show roles;' %}

    {{ log(users_sql, info=True) }}
    {% set users_sql_results = dbt_utils.get_query_results_as_dict(users_sql) %}
    {{ log("users_sql_results: " ~ users_sql_results, info = True) }}
    
{% endmacro %}