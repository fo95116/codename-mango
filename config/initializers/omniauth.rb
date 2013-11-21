# Be sure to restart your server when you modify this file.

Mango::Application.config.session_store :cookie_store, key: '_mango_session'

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Mango::Application.config.session_store :active_record_store
