class NewsController < ApplicationController
  
  before_action :authenticate_user!, only: [:create, :update, :destroy]

  def create
  	@news = current_user.news.new(news_params)
  	if @news.save
  		redirect_to :back, notice: "Новость добавлена"
  	end
  end

  def index
  	@news = News.all
  end

  def update
  	if News.find(params[:id]).update(news_params)
  		redirect_to :back, notice: "Новость обновлена"
  	end
  end

  def destroy
  	if News.find(params[:id]).destroy
  		redirect_to :back, notice: "Новость удалена"
  	end
  end

  private 

  def news_params
		params.require(:news).permit(:title, :description, :image)
	end
end
