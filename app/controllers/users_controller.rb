class UsersController < ApplicationController

  before_action :authorise, :only => [:index, :edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      collection = Collection.create(:user_id => @user.id)
      flash[:success] = "User was succesfully created"
      session[:user_id] = @user.id
      redirect_to users_path
    else
      render :new
      flash[:error] = "A problem occured, please try again"
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to user_path(user)
  end

  def destroy
    user = @current_user
    user.destroy
    redirect_to users_path()
  end

  private
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

      def authorise
        # flash[:error] = "You need to be logged in to see that" unless @current_user.present?
        redirect_to login_path unless @current_user.present?
      end
end
