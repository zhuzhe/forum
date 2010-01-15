# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_forum_session',
  :secret      => 'fceabb33c5db2e01d35245f75adc0ea56d1e3d0a67de5a78bb01270256b274465b4fc7c4c06704fdc9045c1d81d610d68a733c1500afd32fc2b396b0abbdfb0a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
