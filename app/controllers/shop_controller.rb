class ShopController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destory
  end

  def index
  	@shops = Shop.where(area_id:session[:user_area_id])
  end

  def show
  	unless params[:id].blank?
  		@shop = Shop.find_by_id(params[:id])
  	else
  		flash[:notice] = '没有此商店'
  		redirect_to '/user/err'
  	end
  end
end
