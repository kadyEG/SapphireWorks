class PostsController < ApplicationController

  def index
    @posts = Post.search(params[:search])
    @categ = Post.select(:title).distinct
  end


	def show
		@post = Post.find(params[:id])
		@categ = Post.select(:title).distinct
	end

	def new

	end

	def create
		@post = Post.new(post_params)

    @post.user_id = current_user.id

		if @post.save
			redirect_to @post
		else
      flash[:alert] = "Make sure that you filled in the title and body"
			render 'new'
		end
	end


	private
	def post_params
    # FIXME videourl needed ?
		params.require(:post).permit(:title, :body, :videourl)
	end

end
