class UserArtistsController < ApplicationController
  require 'json'
  respond_to :json

  def index
    #TODO check for user_id
    artists = UserArtist.all
    render json: artists.to_json(:include => :genres)
  end
  def save
    message = ''
    status = 0
    data = params
    artist = UserArtist.new(data)
    #TODO need some error checking too
      if artist.save
        data['genre_attribute'].each do |t|
          artist.genres.create(:tag => t)
        end
        message = 'saved'
      else
        message = 'exists'
      end

    render json:  message
  end
  def destroy
    artist_id = params['_json']
    UserArtist.destroy(artist_id)
    render json:  artist_id
  end
end
