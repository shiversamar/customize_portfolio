class PostsController < ApplicationController

  #  On this page index, show will displayed post and we want it to be ordered in descending order the most recent

  def index
  		@posts = Post.all.order('created_at DESC')
  	end


    # the post to be equal to the ID and we want at the bottom of our show page we're going to have other projects that we've worked on 

  	def show
  		@post = Post.find(params[:id])
  		@posts = Post.order("created_at desc").limit(4).offset(1)
  	end

  	private
  		def post_params
  			params.require(:post).permit(:title, :body)
  		end


end
