class SongsController < ApplicationController
  def new
    @profile = User.find( params[:user_id] ).profile
    @song = Song.new
  end

  def create
  end

  def edit
  end

  def update
  end
end