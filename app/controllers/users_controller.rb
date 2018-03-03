class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/' , notice: "Thank you for signing up! Enjoy your shopping!"
    else
      redirect_to '/users/new', notice: "Error: email is not unique - already exists"
    end
  end

private
def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end
