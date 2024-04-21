import Config

config :testing, Testing.Repo,
  database: "testing_repo",
  username: "mariadb",
  password: "mariadb",
  hostname: "localhost"

config :testing, ecto_repos: [Testing.Repo]
