### Using this repository

#### Installing dbt

#### Setting up the connection profile



### Basic dbt commands
|   |   |
| ------------ | ------------ |
|`dbt debug`|Verify that your `profiles.yml` is configured correctly and you have the project is able to access the database|
|`dbt debug --config-dir`|View the configuration directory|
|`dbt docs generate`|Auto generate docs for your project|
|`dbt docs serve --port 8001`|Start a webserver on port 8001 to server the documentation locally|
|`dbt clean`|Delete all folders specified in the clean-targets list specified in `dbt_project.yml`|

### dbt Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
