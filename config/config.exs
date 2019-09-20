# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kadinvanvalin,
  ecto_repos: [Kadinvanvalin.Repo]

# Configures the endpoint
config :kadinvanvalin, KadinvanvalinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ozgb7qDCH9jR6qeVKQtYBHpKGq0qLESCLaNL0JzVMNP0gu7JcNg1zzQllh1RmxHK",
  render_errors: [view: KadinvanvalinWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kadinvanvalin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
