# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_weekly,
  ecto_repos: [ExWeekly.Repo]

# Configures the endpoint
config :ex_weekly, ExWeeklyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CaXnAHdmJrTnsQNPATfHfaLnHUAGr91WT71OVT1KJMsW3plRyKFyc/ZRO2A68mVf",
  render_errors: [view: ExWeeklyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ExWeekly.PubSub,
  live_view: [signing_salt: "GZt5TXCY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
