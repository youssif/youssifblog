class PostsController<ApplicationController

	def index
		@name = "Youssif"
		@posts = Post.all
	end

end