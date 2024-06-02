defmodule PhoenixFeed.Posts do
  import Ecto.Query, warn: false
  alias PhoenixFeed.Repo
  alias PhoenixFeed.Posts.Post

  def list_posts do
    query =
      from p in Post,
      select: p,
      order_by: [desc: p.inserted_at],
      preload: [:user]
    Repo.all(query)
  end

  def save(params) do
    %Post{}
    |> Post.changeset(params)
    |> Repo.insert()
  end
end
