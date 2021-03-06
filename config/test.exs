use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :slax, SlaxWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :slax, Slax.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "slax_test",
  hostname: "localhost",
  port: 5432,
  pool: Ecto.Adapters.SQL.Sandbox

config :slax, Slax.Slack,
  api_token: "token",
  tokens: [
    comment: "token",
    issue: "token",
    auth: "token",
    tarpon: "token",
    project: "token",
    sprint: "token"
  ]
