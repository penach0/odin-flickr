class StaticPagesController < ApplicationController
  require 'flickr'

  def index; end

  def show_photos
    flickr = Flickr.new
    @response = flickr.people.getPublicPhotos(user_id: params[:id])
    @photo_ids = @response.map(&:id)
  end
end
