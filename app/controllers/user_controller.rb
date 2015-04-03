class UserController < ApplicationController
  def login
  	@user = User.where(login_name:params[:login_name],password:params[:password]).first
  	res = ''
  	unless @user.blank?
  		session[:user_id]= @user.id
  		session[:user_area_id] = @user.area_id
  		res = 'ok'
	else
		# flash[:notice] = '用户名或密码错误！'  
		res = '用户名或密码错误！'		
  	end
  	render :json => {:state=>res}
  end

  def logout
  end

  def new
 	@user = User.new
 	@area = Area.where(pid:nil)
  end

  def create
  	user = User.where(login_name:params[:login_name]).count
  	res = ''
  	if user > 0
  		res = '登录名已被占用！'
  	else
  		@user = User.new
  		@user.login_name = params[:login_name]
  		@user.password = params[:password]
  		@user.mobile = params[:mobile]
  		@user.area_id = params[:area_id]
  		if @user.save
  			res = 'ok'
  		else
  			res = '注册失败'
  		end
  	end
	render :json => {state:res}
  end

  def edit
  end

  def update
  end

  def change_password
  end

  def update_password
  end

  def welcome
  	@user = User.new
  end

  def err
  	#render :layout => false
  end

private  
  
  def user_params  
    params.require(:user).permit(:login_name , :password, :area_id, :mobile)  
  end  
end
