  class WorkGenresController < ApplicationController
  before_action :set_user

  def create
  	@work_genre = @user.workGenres.new(work_genre_params)
  	@work_genre.title = params[:title]
  	@work_genre.description = params[:description]
  	@work_genre.price_per_symbol = params[:price_per_symbol]
  	if @work_genre.save
  		redirect_to :back, notice: "Жанр работы добавлен"
  	else
  		redirect_to :back, alert: "Жанр не добавлен"
  	end
  end

  def update
  	if WorkGenre.find(params[:id]).update(work_genre_params)
  		redirect_to :back, notice: "Жанр успешно обновлён"
  	else
  		redirect_to :back, alert: "Жанр не обновлён"
  	end
  end

  def destroy
  	if WorkGenre.find(params[:id]).destroy
  		redirect_to :back, notice: "Жанр удалён"
  	end
  end

  private

  def set_user
  	@user = User.find(params[:user_id])
  end

  def work_genre_params
		params.require(:workgenre).permit(:title, :description, :price_per_symbol)
	end
end
