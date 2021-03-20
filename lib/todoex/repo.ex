defmodule Todoex.Repo do
  use Ecto.Repo,
    otp_app: :todoex,
    adapter: Ecto.Adapters.Postgres
end
