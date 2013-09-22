# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MongoidUser::Application.config.secret_token = '65c3c607244a60d3e55311cb982a795f4bf318d0cb4f50f7e5065faaa6bc17478ee15c13c5da14eb3a7a809aac18c6b19ae86b5efa060aac91158e01a1d3fd40'
