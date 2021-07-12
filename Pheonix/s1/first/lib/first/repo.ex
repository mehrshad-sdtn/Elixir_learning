defmodule First.Repo do
  use Ecto.Repo,
    otp_app: :first,
    adapter: Ecto.Adapters.Postgres
end
