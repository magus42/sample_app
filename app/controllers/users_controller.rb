class UsersController < ApplicationController

  def show
  	#raise params.inspect
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end


  def create
  	@user = User.new(params[:user])
  	
  	if @user.save
      sign_in @user
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to user_path(@user)
  	else
  		render 'new'
  	end
  end

end
