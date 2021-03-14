defmodule ExWeekly.Repo do
  use Ecto.Repo,
    otp_app: :ex_weekly,
    adapter: Ecto.Adapters.Postgres
end
