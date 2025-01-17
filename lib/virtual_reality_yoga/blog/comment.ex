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
    belongs_to :post, Post, public?: true
  end

  calculations do
    calculate :post_comments_count, :integer do
      load post: :comments

      calculation fn comments, ctx ->
        comments
        |> Enum.map(fn comment ->
          comment.post.comments |> Enum.count()
        end)
      end
    end

    calculate :double_post_comments_count, :integer do
      load :post_comments_count

      calculation fn comments, ctx ->
        comments
        |> Enum.map(fn comment ->
          comment.post_comments_count * 2
        end)
      end
    end
  end
end
