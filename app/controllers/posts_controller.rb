class PostsController < ApplicationController

  def index
<<<<<<< HEAD

    @posts = Post.all
  end
 def show
    @post = Post.find(params[:id])
  end

  def new
  end
def create
  # @post = Post.new(params[:post])

  # @post.save
  # redirect_to @post
   @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
end
def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to posts_path
end
private
  def post_params
    params.require(:post).permit(:user_id, :title, :body)
  end

		@posts = Post.all
	end
=======
    @posts = Post.search(params[:search])
    @categ = Post.select(:title).distinct
  end
>>>>>>> 71cfb8677c237db378a8abc9bef835a01d891aa5


	def show
		@post = Post.find(params[:id])
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


