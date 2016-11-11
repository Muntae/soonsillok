class CreatePostController < ApplicationController
    layout "dev"
  def create
    
  end
  
  def write
    
    newpost = Post.new
    newpost.name = params[:name]
    newpost.job = params[:job]
    newpost.profileImg = params[:profileImg]
    newpost.save
    
    redirect_to '/home/list'
  end
end
