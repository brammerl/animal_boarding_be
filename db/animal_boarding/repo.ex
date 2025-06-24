defmodule AnimalBoarding.Repo do
  use Ecto.Repo,
    otp_app: :animal_boarding_be,
    adapter: Ecto.Adapters.Postgres
end
