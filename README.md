Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices



1-First, make sure you have the required dependencies installed:
pip install dbt snowflake-connector-python dbt-core

3-ajouter dbt au variable d'environnement
pip show dbt-snowflake
C:\path\to\dbt\Scripts

3-creer le projet dbt
dbt init my_dbt_project

4- define a new macro that runs your Python script using the shell function from the dbt-utils package:
        - In dbt project, create a new directory called macros (if it doesn't already exist) inside the root directory.

        - Inside the macros directory, create a new file named run_python_script.sql.

        - In the run_python_script.sql file, define a new macro that runs your Python script using the {{fal.sql}} Jinja tag:

                {% macro run_python_script() %}
                {% do dbt_utils.shell("python your_python_script.py") %}
                {% endmacro %}

5- install the dbt-utils package. In your dbt project, open or create a packages.yml file in the root directory.
Add the following lines to the packages.yml file:
        packages:
         - package: dbt-labs/dbt_utils
            version: 0.7.3

6-install dbt utils
dbt deps

7- in the on-run-start configuration in dbt_project.yml file, call the run_python_script macro:
        on-run-start:
            - "{{ run_python_script() }}"



