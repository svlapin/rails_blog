class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    if !session[:user_id]
      redirect_to login_url
    end

    @post = Post.new
  end

  def create
    current_user = User.find(session[:user_id])

    if !current_user
      redirect_to login_url
    end

    @post = Post.new(post_params.merge(user: current_user))

    if @post.save
      redirect_to posts_path
    else
      render action: 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:body)
    end
end
