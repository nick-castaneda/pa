class UsersController < ApplicationController
def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
end

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    log_in @user
    redirect_to user_path(@user)
  else
    flash[:error] = "Fill out all boxes!"
    render :new #rendering the controller method
  end
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])

  if @user.update_attributes(user_params)
    redirect_to user_path(@user)
  else
    render :edit
  end
end

def destroy
  @user = User.find(params[:id])
  if @user.destroy
    redirect_to users_path
  end
end




private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :party_id, :city, :state)
  end
end
