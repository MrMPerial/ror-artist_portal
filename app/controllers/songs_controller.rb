class SongsController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user
  
  # Page
  def new
    @user = User.find( params[:user_id] )
    @song = Song.new
  end

  # Action
  def create
    @user = User.find( params[:user_id] )
    @song = @song.build_song(song_params)

    if @song.save
      flash[:success] = "Song Updated"
      redirect_to user_path( params[:user_id] )
    else
      flash[:warning] = "Something went wrong."
      render action: :new
    end
  end

  # Page
  def edit
  end

  # Action
  def update
  end

  private
    def song_params
      params.require(:song).permit(:title, :cover, :file)
    end

    def only_current_user
      @user = User.find( params[:user_id] )
      redirect_to root_url unless @user == current_user
    end
end