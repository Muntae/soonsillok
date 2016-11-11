class HomeController < ApplicationController
  
  def index
    @allpost = Post.all
    
  end
  
  def modify
    @onepost = Post.find(params[:id])
  end
  
  
  
  def delete
    
    del_info = Info.find(params[:id])
    del_info.destroy
    
    redirect_to "/home/"
  end
  def rewrite
    re_info = Info.find(params[:id])
    re_info.info = params[:re_info]
    re_info.link = params[:link]
    re_info.save
    
    redirect_to "/home/info/" + re_info.post_id.to_s
  end
  
  def list
    @postlist = Post.all
  end
  
  def info
    @info = Post.find(params[:id])
  end
  
  def create_info
    @info = Post.find(params[:id])
  end
  
  def write_info
    newinfo = Info.new
    newinfo.post_id = params[:post_id]
    newinfo.info = params[:info]
    newinfo.link = params[:link]
    newinfo.save
    
    redirect_to "/home/create_info/" + newinfo.post_id.to_s
  end
end
