# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ljmu_assets_session',
  :secret      => '60c0ba24729b4f18fb1e6a19adc703f22c670b17fcaf32bfd2d915d3b1d03fa546e8b03b3197668c02035539d9bd4ad9ce7a38c5834980a013a55d2ae707b01c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
