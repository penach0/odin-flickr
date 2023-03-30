class StaticPagesController < ApplicationController
  require 'flickr'

  def index; end

  def show_photos
    flickr = Flickr.new
    @response = flickr.people.getPublicPhotos(user_id: params[:id])
    @username = flickr.people.getInfo(user_id: params[:id]).username
    @photo_ids = @response.map(&:id)
    @photos_info = @photo_ids.map { |id| flickr.photos.getInfo(photo_id: id) }
    @photo_urls = @photos_info.map { |info| Flickr.url(info) }
  end
end
