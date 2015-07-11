# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_071216-when-associations-get-saved_session',
  :secret      => '29dc22008d22d69d73fb693af249e973273ae283f84b47e00a9640377b79cb94bbfa32698b2ff89e86d37cb57fc674d345844ea9e7c94a61f6ee4572746549a2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
