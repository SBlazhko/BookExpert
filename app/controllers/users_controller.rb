class UsersController < ApplicationController
  
  before_action :authenticate_user!, only: [:show]

  def index 
  	@users = User.where(role: 0)
  	@reviwers = User.where(role: 1)
  	@admins = User.where(role: 2)
  end

  def show
  	@user = User.find(current_user.id)
    @biography = Biography.new
    @work_genre =  WorkGenre.new
  end

  def reviwer_show_page
    @reviwer = User.find(params[:id])
    @work_genres = @reviwer.workGenres
  end

end
