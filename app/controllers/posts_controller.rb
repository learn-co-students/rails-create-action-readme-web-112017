class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(title: params[:title], description: params[:description])
		@post.save
		redirect_to post_path(@post)
	end

	def new
		@post = Post.new
	end

end
