defmodule PhoenixApp.PostView do
  use PhoenixApp.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, PhoenixApp.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, PhoenixApp.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      author: post.author,
      body: post.body}
  end
end
