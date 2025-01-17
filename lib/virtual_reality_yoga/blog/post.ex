defmodule VirtualRealityYoga.Blog.Post do
  use Ash.Resource,
    otp_app: :virtual_reality_yoga,
    domain: VirtualRealityYoga.Blog,
    data_layer: AshPostgres.DataLayer

  alias VirtualRealityYoga.Blog.Comment

  postgres do
    repo VirtualRealityYoga.Repo
    table "post"
  end

  actions do
    default_accept :*
    defaults [:create, :read, :update, :destroy]
  end

  attributes do
    uuid_primary_key :id
  end

  relationships do
    has_many :comments, Comment
  end
end
