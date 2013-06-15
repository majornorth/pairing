class FavoritesController < ApplicationController
  def index
  	@favorites = Activity.all
  end
end
