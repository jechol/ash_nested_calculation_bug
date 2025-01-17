defmodule VirtualRealityYoga.Blog.Post do
  use Ash.Resource,
    otp_app: :virtual_reality_yoga,
    domain: VirtualRealityYoga.Blog

  alias VirtualRealityYoga.Blog.Comment

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
