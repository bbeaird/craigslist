class CategoriesController < ApplicationController
  def index
    @all_categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(name: params[:category][:name])
    redirect_to new_category_path
  end

  def show
    @category = Category.find(params[:id])
    @post = Post.new
  end



end
