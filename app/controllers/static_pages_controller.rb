class StaticPagesController < ApplicationController
  require 'flickr'

  def index; end

  def show_photos
    @response = Flickr.new.people.getPublicPhotos(user_id: params[:id])
  end
end
