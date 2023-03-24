{% macro run_script_output(script_output) %}
  {% set output_file = open('output.txt', 'w') %}
  {% do output_file.write(script_output) %}
  {% do output_file.close() %}
{% endmacro %}
