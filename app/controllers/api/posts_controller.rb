class Api::PostsController < ApplicationController
  def index
    @posts = PostService.new.call
    if @posts 
      render json: {status: 200, data: @posts}, status: 200
    else 
      render json: {status: 404, data: "URL not found"}, status: 404
    end
  end
end
