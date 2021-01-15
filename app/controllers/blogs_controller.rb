class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update]

  def index
    @blogs = Blog.all.order('id DESC')
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

  private

  def blog_params
    params.require(:blog).permit(:title, :article)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
