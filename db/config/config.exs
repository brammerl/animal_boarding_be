import Config

config :animal_boarding_be, AnimalBoarding.Repo,
  database: "animal_boarding_be_repo",
  username: "postgres",
  password: "glenda12",
  hostname: "localhost"

config :animal_boarding_be, ecto_repos: [AnimalBoarding.Repo]
