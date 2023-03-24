
{% macro run_python_script() %}
  {% set script_output = dbt_utils.shell("python test_script.py") %}
  {% do run_script_output(script_output.stdout) %}
{% endmacro %}