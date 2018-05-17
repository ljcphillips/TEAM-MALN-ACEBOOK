def like
  @post = Post.find(params[:post_id])
  @post.liked_by current_user
  redirect_to :posts_url
end
