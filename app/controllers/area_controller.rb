class AreaController < ApplicationController
  def get_area
  	unless params[:pid].blank?
  		@area = Area.where(pid:params[:pid])
  	end
  	render :layout => false
  end

end
