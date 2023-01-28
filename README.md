# Mind Dump

[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)


## Ruby setup

This application is running on Ruby 3.2.0 and Rails 7.0.4

Install and manage Ruby versions with [rbenv](https://github.com/rbenv/rbenv#seamlessly-manage-your-apps-ruby-environment-with-rbenv). Make sure to install the correct Ruby version, which is specified in the Gemfile, in addition to above. No gemset is specified for this project.


## Database setup

This application uses PostgreSQL as its database. Make sure to install it and create a database for the application. The database user is specified in the `config/database.yml` file. Create a `.env` file in the root directory of the project and add the following `DB_PASSWORD=<your_pssword>`.

Run the following commands to create the database, run the migrations, and seed the database:

```bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```


## Local development

#### Starting the server

A Procfile is included in the project. To start the server, run `bin/dev` in the root directory of the project. This will start the server on port 3000, and also compile the css.

#### Running tests

RSpec is used for tests. To run all the specs run: `rspec`. This will run the tests and generate a coverage report in the `coverage` directory.
To run a specific file, run rspec `<file name>`.
