class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new
		@post.title = params[:title]
		@post.description = params[:description]
		@post.save
		redirect_to post_path(@post)
		#   Prefix Verb URI Pattern          Controller#Action
		#    posts GET  /posts(.:format)     posts#index
		#          POST /posts(.:format)     posts#create
		# new_post GET  /posts/new(.:format) posts#new
	#=====#     post GET  /posts/:id(.:format) posts#show #=====#
	end
end
