use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :plate_slate, PlateSlateWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :plate_slate, PlateSlate.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "p0stgres",
  database: "plate_slate_test",
  hostname: "192.168.64.2",
  pool: Ecto.Adapters.SQL.Sandbox
