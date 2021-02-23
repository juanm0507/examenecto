import Config

config :posts, Posts.Repo,
  database: "posts",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

  config :posts, ecto_repos: [Posts.Repo]
