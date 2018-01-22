class UsersController < ApplicationController


### WHERE A USER - ONCE LOGGED IN SEES THEIR Jobs(CATS - user.cats)
  def show
    @user = User.find(params[:id])
    @tasks = Task.all
  end


### CREATE NEW USER
  def new

  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path(@user)
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user.destroy
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
