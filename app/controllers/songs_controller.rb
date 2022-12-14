class SongsController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user

  def index
    @songs = Song.all
  end

  def new
    @user = User.find( params[:user_id] )
    @song = Song.new
  end

  def create
    @user = User.find( params[:user_id] )
    @song = @user.build_song(song_params)

    if @song.save
      flash[:success] = "Song Saved!"
      redirect_to user_profile_song_path( params[:user_id] )
    else
      flash[:warning] = "Something went wrong..."
      render action: :new
    end
  end

  def edit
    @user = User.find( params[:user_id] )
    @song = @user.song
  end

  def update
    @user = User.find( params[:user_id] )
    @song = @user.song

    if @song.update(song_params)
      flash[:success] = "Song Updated"
      redirect_to user_profile_song_path( params[:user_id] )
    else
      flash[:warning] = "Something went wrong..."
      render action: :edit
    end
  end

  def show
    @user = User.find( params[:user_id] )
    @song = @user.song
  end

  private
    def song_params
      params.require(:song).permit(:title, :song_cover, :song_file)
    end

    def only_current_user
      @user = User.find( params[:user_id] )
      redirect_to root_url unless @user == current_user
    end
end