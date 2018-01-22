class TasksController < ApplicationController


  ### Shows a specific task and description
  def show
    @task = Task.find(params[:id])
    @test = Job.exists?(task_id: @task.id)
    @jobs = Job.find_by(task_id: @task.id)
  end

  ### Create new tasks
  def new
    @task = Task.new
    @categories = Category.all
  end

  def create
    @user = User.find_by(id: session[:user_id])
    @task = @user.tasks.build(task_params)
    # @task = Task.create(task_params)
    @categories = Category.all


    if @task.valid?
      @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def claim
    @task = Task.find(params[:id])
    @user = User.find_by(id: session[:user_id])
    @job = @user.jobs.build(cheetah_id: @user.id, task_id: @task.id)
    @job.save
    redirect_to user_path(@user)
  end

  def approval
    @task = Task.find(params[:id])
    @task.update(cheetah: true)
    @user = User.find_by(id: session[:user_id])
    redirect_to user_path(@user)
  end

  def completed
    @task = Task.find(params[:id])
    @user = User.find_by(id: session[:user_id])
    @task.update(rabbit: true)
    redirect_to user_path(@user)
  end

  ### Edit Task and mark complete
  def edit

  end

  def update

  end

  ### User destroy option
  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:title, :description, category_ids: [])
  end


end
