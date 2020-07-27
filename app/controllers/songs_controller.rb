class SongsController < ApplicationController
before_action :set_song, only: [:show, :edit, :update, :destroy]


  def index
    @songs = Song.all
  end

  def show
  end

  def edit
  end

  def create
  @song = Song.new(song_params)
  if @song.valid?
    @song.save
    redirect_to song_path(@song)
  else
    render :new
  end
end

  private

def set_song
  @song = Song.find(params[:id])
end

end
