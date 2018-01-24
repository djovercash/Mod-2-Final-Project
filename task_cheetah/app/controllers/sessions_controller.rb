class SessionsController < ApplicationController
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
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

  def create
    user = User.find_by(username: params[:user][:username])

    if user.try(:authenticate, params[:user][:password])
      session[:user_id] = user.id
      @user = user
      redirect_to user_path(@user)
    else
      flash[:errors] = ["User Name or Password is incorrect. Please try again."]
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
