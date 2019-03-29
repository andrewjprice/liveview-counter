# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveview_counter, LiveviewCounterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jEN4CvM7Ld4C0QZhrlFk5W7ORs67xOOls+UmGtsTtyVnZ+Qv6CEd5a49PnaCcIUM",
  render_errors: [view: LiveviewCounterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewCounter.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Vtr32hO1YHw4N5ko5L6wR4LS3LAAECDr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Render leex files with LiveView engine
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
