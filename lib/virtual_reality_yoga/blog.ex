defmodule VirtualRealityYoga.Blog do
  use Ash.Domain,
    otp_app: :virtual_reality_yoga

  resources do
    resource VirtualRealityYoga.Blog.Post
    resource VirtualRealityYoga.Blog.Comment
  end
end
