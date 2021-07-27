# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, DiscussWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M24r75bvP96lxsbFBWENsJL+RRmz1Tu15R31WYOw61mYQ1o9yPb6U9+32No1hc+H",
  render_errors: [view: DiscussWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Discuss.PubSub,
  live_view: [signing_salt: "/8qzEWKV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :ueberauth, Ueberauth,
  providers: [
    github: { Ueberauth.Strategy.Github, []}

  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "51a9b5358c54d52aa7a2",
  client_secret: "5bbd3c97a695dd74ec626a762dc03eef229c9390"
