# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :new_paradyme,
  ecto_repos: [NewParadyme.Repo]

# Configures the endpoint
config :new_paradyme, NewParadyme.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JWvYgsGe2R3XEce/xxY4IAtGpRqzZrxxttb8FjaQaHHGnGbsnqUIjDkpo/LXDBJ3",
  render_errors: [view: NewParadyme.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NewParadyme.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
