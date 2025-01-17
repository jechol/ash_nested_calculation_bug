defmodule VirtualRealityYoga.Blog.Comment do
  use Ash.Resource,
    otp_app: :virtual_reality_yoga,
    domain: VirtualRealityYoga.Blog,
    data_layer: AshPostgres.DataLayer

  alias VirtualRealityYoga.Blog.Post

  postgres do
    repo VirtualRealityYoga.Repo
    table "comment"
  end

  actions do
    default_accept :*
    defaults [:create, :read, :update, :destroy]
  end

  attributes do
    uuid_primary_key :id
  end

  relationships do
    belongs_to :post, Post
  end
end
