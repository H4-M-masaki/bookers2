class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def index
    @users = User.all
  end
  
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy(user_params)
    render :index
  end
  
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
