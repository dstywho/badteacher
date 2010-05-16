# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_badteach_session',
  :secret      => '85d65d77af2cb935de19c989fc9e9accc8781c9ea086fbf2505c6d90202e6d0d1341549fbefabb4acfc1b6232a5da30494d5e015ab350a4e28160cd4c414db3c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
