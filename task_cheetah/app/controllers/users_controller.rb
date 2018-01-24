class UsersController < ApplicationController
  skip_before_action :require_logged_in, only: [:new, :create]
  before_action :log_out, only: [:new]


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
    @all_tasks = Task.all
    @tasks = []
    @all_tasks.each do |task|
      @tasks << [task.title, task.created_at]
    end
    @newest_task = @tasks.sort_by{ |x, y| y }
    @newest_task_name = @newest_task.last[0]

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
