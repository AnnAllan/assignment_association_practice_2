class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:created_at)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @post.comments.build
  end

  def create
    @post = Post.create(safe_post_params)
   if @post.save
     flash[:success] = "New post created"
     redirect_to post_path(@post)
   else
     flash.now[:error] = "Post creation failed" + post.error.full_message.join(', ')
     render :new
   end
  end

  def edit
    @post = Post.find(params[:id])
    @post.comments.build
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(safe_post_params)
     flash[:success] = "Post updated"
     redirect_to post_path(@post)
    else
     flash.now[:error] = "Post update failed" + post.error.full_message.join(', ')
     render :edit
    end
  end

  def destroy
    if Post.find(params[:id]).destroy
      flash[:success] = "Post deleted"
      redirect_to posts_path
    else
      flash[:error] = "Post deletion failed" + post.error.full_message.join(', ')
      render :edit
    end
  end

  private
  def safe_post_params
   params.require(:post).permit(:title, :body, :category_id, :tag_ids => [], :comments_attributes => [:id, :body, :user_id])
  end
end
