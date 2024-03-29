use Mix.Config

config :kadinvanvalin, KadinvanvalinWeb.Endpoint,
  load_from_system_env: true,
  url: [scheme: "https", host: "kadinvanvalin-personal.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info

# Configure your database
config :kadinvanvalin, KadinvanvalinWeb.Endpoint,
  adapter: Ecto.Adapters.Postgres,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true,
  url: System.get_env("DATABASE_URL")