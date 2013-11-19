class PostsController < ApplicationController
  def create
    p "*"*80
    p params
    p params[:category_id].to_i

    Post.create(title: params[:post][:title], description: params[:post][:description], price: params[:post][:price], category_id: params[:category_id])
    # redirect_to category_path(id: params[:category_id].to_i)
    redirect_to category_post_path(params[:category_id].to_i)
  end

  def show
  end

  def edit
    @post = Post.find_by(key: params[:key])
  end
end