class UsersController < ApplicationController
  skip_before_action :require_logged_in, only: [:new, :create]
  before_action :log_out, only: [:new]

  def analytics
    #User Data
    @total_users = User.all.count
    @newest_user = User.all.last

    #Task Data
    @total_tasks = Task.all.count
    @newest_task = Task.all.last
    @completed_tasks = Task.select {|task| task.cheetah == true && task.rabbit == true}.count
    @review_pending_tasks = Task.select { |task| task.cheetah == true && task.rabbit == false }.count
    @unclaimed_tasks = Task.select { |task| task.cheetah == false && task.rabbit == false}.count
  end

### WHERE A USER - ONCE LOGGED IN SEES THEIR Jobs(CATS - user.cats)
  def show
    #Claimed task data
    @user_claim_job = @user.cats.select { |cat| !cat.task.rabbit }
    @user_claim = @user_claim_job.map { |cat| cat.task }

    #Pending Tasks
    @pending_task = @user.tasks.select { |task| !task.cheetah }

    #Review Tasks
    @review_task = @user.tasks.select { |task| task.cheetah && task.rabbit == false }

    #cheetah status
    @cheetah_status = @user.cheetah_status

    ##Top Cheetah Points
    @all_users = User.all
    @cheetahs = []
    @all_users.each do |user|
      @cheetahs << [user.username, user.cheetah_points]
    end
    @top_cheetah_points = @cheetahs.sort_by{ |x, y| y}

    ##Newest Created Task
    @newest_task = Task.all.sort_by { |task| task.created_at}.last

    #Top Cheetah Rating
    @top_users = User.all.map {|user| [user.cheetah_status, user.username]}
    @top_user = @top_users.sort_by {|x| x[0][1]}.last
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
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end
