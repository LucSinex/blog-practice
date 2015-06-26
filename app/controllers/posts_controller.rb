class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  def edit
  end

  private

    def post_params
    	params.require(:post).permit(:title, :text)
    end
end
