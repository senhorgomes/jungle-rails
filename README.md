# Jungle
Welcome to the Jungle... store, where you can find the most uncommon and common household items at outrageously high prices.
You won't find prices higher than mine, and that is my guarantee.

This is a mini e-commerce application built with Rails 4.2 for purposes of learning Rails, made by Bryan Gomes. Visitors can sign-up, or log into the site using an existing login. Visitors and users can process orders using Stripe. The application also allows Admins to create new products and categories, as well as delete existing products that are out of stock, or irrelevant.

I hope you enjoy the app, as much as I enjoyed making it.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Enjoy the app!

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Bcrypt 3.1.7 or above
* Bootstrap-sass 3.3.6 or above
* Byebug
* Capybara
* Carrierwave
* Satabase_cleaner
* Sotenv-rails
* Faker
* Font-awesome-rails
* Jbuilder 2.0, no greater than 3.0
* Jquery-rails
* Money-rails
* Newrelic_rpm
* Pg
* Poltergeist
* Puma
* Quiet_assets
* Rails_12factor
* Rmagick
* Rspec-rails 3.5, no greater than 4.0
* sass-rails 5.0, no greater than 6.0
* sdoc 0.4.0, no greater than 0.5.0
* spring
* Stripe
* Turbolinks
* Uglifier 1.3.0 or above
* Web-console 2.0 no greater than 3.0

## Screenshots
