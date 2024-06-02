defmodule PhoenixFeed.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_feed,
    adapter: Ecto.Adapters.Postgres
end
