class SongsController < ApplicationController
before_action :set_song, only: [:show, :edit, :update, :destroy]


  def index
    @songs = Song.all
  end

  def show
  end

end
