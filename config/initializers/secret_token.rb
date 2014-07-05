# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
PaginaWebBoda::Application.config.secret_token = ENV['SECRET_KEY_BASE'] || '9bd9dddac7ab2de4c8ac73a92d0ff974a64e5ee2833042104d56456eb799c79b09565e7a35237fda4ada4b5308a281de5f9241f62c743d92822ede87190c2488'
