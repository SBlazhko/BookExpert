class BiographiesController < ApplicationController
 

  def create
  	@biography = Biography.new(biography_params)
  	if @biography.save
  		redirect_to :back, notice: "Биография добавлена"
  	else
  		redirect_to :back, alert: "Биография не добавлена"
  	end
  end

  def update
  	@biography = Biography.find_by(user_id: current_user.id)
  	if @biography.update(biography_params)
  		redirect_to :back, notice: "Биография обновлена"
  	end
  end

  def destroy
  	if Biography.find_by(user_id: params[:id]).destroy
  		redirect_to :back, notice: "Биография удалена"
  	end
  end

  private

  def biography_params
  	params.require(:biography).permit(:slogan, :work_experiance, :bibliography, :user_id)
  end

end
