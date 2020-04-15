class BlogsController < ApplicationController
  skip_before_action :verify_authenticity_token

  #get /pages/blog
  def index
    @blogs = Blog.all
  end
  #get /pages/blog/:id
  def show
    @blog = Blog.find(params[:id])
  end

  #get /pages/blog/new
  def new
    @blog = Blog.new()
    # render the new.html.erb
  end

  def create
    # render plain: params
    @new_blog = Blog.new(params.require(:blog).permit(:title, :body, :url))
    @new_blog.save
  end

  def edit
  end

  def update
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
  end
end
