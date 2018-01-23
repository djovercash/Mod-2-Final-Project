class UsersController < ApplicationController


### WHERE A USER - ONCE LOGGED IN SEES THEIR Jobs(CATS - user.cats)
  def show
    #Claimed task data
    @user_claim_job = @user.cats.select { |cat| !cat.task.rabbit }
    @user_claim = @user_claim_job.map { |cat| cat.task }

    #Pending Tasks
    @pending_task = @user.tasks.select { |task| !task.cheetah }

    #Review Tasks
    @review_task = @user.tasks.select { |task| task.cheetah && task.rabbit == false }

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
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    @user.update(user_params)

    if @user.valid?
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
