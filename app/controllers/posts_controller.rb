class PostsController<ApplicationController

	def index
		@name = "Youssif"
		@posts = Post.all
	end

	def show
		@post = Post.find_by_id(params[:id])
	end

	def new
		@post = Post.new
		@params = params

		# respond_to do |format|
		# 	if @post.save
		# 		format.html { render action: "create" }
		# 	else 
		# 		format.html { render action: "new"}
		# 	end
		# end
	end

	def create
		@post = Post.new(params[:post])

		if @post.save
			redirect_to @post
		else
			render action: 'new'
		end

	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(params[:post])
			redirect_to @post
		else
			render action: 'edit'
		end

	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_url, notice: "Post was deleted."
	end

end