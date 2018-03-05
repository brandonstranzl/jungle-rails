# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

# Notes:

1. Please note that in the Admin section I added ability to delete new products and new categories.
This was done because the app can get messy when testing features and rather than reset the database
it is easier to just add a delete button.

2. Please note that notwithstanding any email address entered in the user registration process,
the email used to place the order on Stripe will serve as the official email for the order and the
order confirmation email.  Whatever you put in the Stripe input field will determine the email both for payment as well as the email confirmation sent by the app.  This is something that in the real world
might cause issues because the payment mechanism and the customer may not be the same (i.e., a child
buying on parent credit card).

3. The emails are being saved locally in jungle/tmp/letter_opener. Only the HTML order email has been written to the project specs.

4. The user name and password for access to the admin section of the site are in the env.example file.  The example.env file suggests using username: "Jungle" and password: "monkey", but you can set the
DOTENV file values to whatever you prefer. Once that file contains values, the app will no longer
ask for HTTP Basic Auth when a user attempts to access the admin namespace. Without filling out the
DOTENV file, the app will ask for a username and password from the user, which will need to be set
in the DOTENV file as per the code.

#Screenshots:
HERE IS THE HOME PAGE:
![home_page:](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/home_page.png?raw=true)

HERE IS A PRODUCT PAGE:
![product_page:](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/product_page.png?raw=true)

HERE IS THE SIGN UP PAGE:
![sign_up_page:](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/sign_up_page.png?raw=true)

HERE IS THE CONFIRM THAT USER IS REGISTERED PAGE:
![confirm_of_sign_up_page:](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/confim_of_sign_up_on_home_page.png?raw=true)

HERE IS THE SHOPPING CART:
![cart_page:](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/cart_page.png?raw=true)

HERE IS THE STRIPE PAYMENT POP UP WINDOW:
![stripe_payment_page](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/stripe_payment_api_with_email_field.png?raw=true)

HERE IS THE ORDER CONFIRM PAGE:
![order_confirm_page](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/order_page.png?raw=true)

HERE IS THE LOCAL PATH TO THE ORDER CONFIRM EMAIL:
![local_storage_of_email_page](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/local_storage_of_email_msg.png?raw=true)

HERE IS THE HTML EMAIL THAT IS AUTO-GENERATED AND SENT TO THE ADDRESS INPUT INTO STRIPE:
![html_email_order_confirm](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/example_html_email_order_confirm.png?raw=true)

HERE IS THE ADMIN DASHBOARD:
![admin_dashboard_page](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/admin_namespace_home.png?raw=true)

HERE IS THE ADMIN PAGE TO ADD OR DELETE A PRODUCT:
![admin_product_add_delete_page](https://github.com/brandonstranzl/jungle-rails/blob/master/Docs/admin_product_access.png?raw=true)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
