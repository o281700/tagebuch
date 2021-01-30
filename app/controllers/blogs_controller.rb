class BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_blog, only: [:show, :edit, :update]

  def index
    @blogs = Blog.includes(:user).order('id DESC')
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @blog.comments.includes(:user).order('created_at DESC')
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_path(@blog)
    else
      render :edit
    end
  end

  def search
    @blogs = Blog.search(params[:keyword])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :article).merge(user_id: current_user.id)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
