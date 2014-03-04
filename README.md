# Landagent

Super Easy Postgres Multitenancy

Using a subdomain mapping design pattern, Landagent takes advantage of PostgresQL SCHEMA_SEARCH_PATH.
Landagent maps tenants with complete data segregation to the required data namespace.


## Installation

Add this line to your application's Gemfile:

    gem 'landagent'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install landagent

Then Install and run the migrations:

    $ rails g landagent:install
    $ rake db:migrate

## Usage

### Development Environments
Once you have Tenants set up, use something like lvh.me to map back to localhost

		$ http://tenant1.lvh.me

### Tenant migrations
Landagent will set up Tenants, then because she is a good land agent will update each of the tenants with the required migrations with:

    $ rake tenants:db:migrate

## In the Pipeline

1. Devise hooks
2. Locale hooks
3. Management layer

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
