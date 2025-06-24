import Config

config :animal_boarding_be, AnimalBoarding.Repo,
  database: "animal_boarding_be_repo",
  username: "postgres",
  password: System.get_env("DB_PASSWORD") ,
  hostname: "localhost"

config :animal_boarding_be, ecto_repos: [AnimalBoarding.Repo]
