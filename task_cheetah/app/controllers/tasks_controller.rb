class TasksController < ApplicationController
  before_action :find_task, only: [:claim, :approval, :completed]


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
    @task = @user.tasks.build(task_params)
    # @task = Task.create(task_params)
    @categories = Category.all


    if @task.valid?
      @task.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def claim
    @job = @user.jobs.build(cheetah_id: @user.id, task_id: @task.id)
    @job.save
    redirect_to user_path(@user)
  end

  def approval
    @task.update(cheetah: true)
    redirect_to user_path(@user)
  end

  def completed
    @task.update(rabbit: true, rating: params[:task][:rating])
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

  def find_task
    @task = Task.find(params[:id])
  end


end
