class PostsController < ApplicationController

	def index
	end
	def new
		@post = Post.new
	end

	def create
		@user = User.first
		@post = Post.new(post_params)
		@post.user = @user
		if @post.save
			redirect_to new_post_path, notice: 'Post Created Successfully'
		else
			redirect_to new_post_path, notice: 'Error creating post'
		end
	end

	private
		def post_params
			params.require(:post).permit(:date,:rationale)
		end
end
