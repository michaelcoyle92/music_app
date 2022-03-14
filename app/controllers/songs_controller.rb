class SongsController < ApplicationController
  def index
    songs = Song.all  
    render json: songs.as_json
  end

  def create
    song = song.new(
      title: params[:title]
      album: params[:album]
      artist: params[:artist]
      year: params[:year]
      country: params[:country]
    )
    song.save
    render json: song.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: photo.as_json
  end
end
