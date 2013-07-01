class PostsController<ApplicationController

	def index
		@name = "Youssif"
		@posts = Post.all
	end

	def show
		@post = Post.find_by_id(params[:id])
	end

end