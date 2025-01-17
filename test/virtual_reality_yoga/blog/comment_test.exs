defmodule VirtualRealityYoga.Blog.CommentTest do
  use VirtualRealityYoga.DataCase

  doctest VirtualRealityYoga.Blog.Comment
  alias VirtualRealityYoga.Blog.{Post, Comment}
  alias Ash.Changeset

  test "post_comments_count" do
    post = Post |> Changeset.for_create(:create) |> Ash.create!()

    [comment | _] =
      0..2
      |> Enum.map(fn _ ->
        Comment |> Changeset.for_create(:create, %{post_id: post.id}) |> Ash.create!()
      end)

    comment = comment |> Ash.load!([:post_comments_count])

    assert comment.post_comments_count == 3
  end

  test "double_post_comments_count" do
    post = Post |> Changeset.for_create(:create) |> Ash.create!()

    [comment | _] =
      0..2
      |> Enum.map(fn _ ->
        Comment |> Changeset.for_create(:create, %{post_id: post.id}) |> Ash.create!()
      end)

    comment = comment |> Ash.load!([:double_post_comments_count])

    assert comment.post_comments_count == 6
  end
end
