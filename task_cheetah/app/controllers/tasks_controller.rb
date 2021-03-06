class TasksController < ApplicationController
  before_action :find_task, only: [:claim, :approval, :completed, :edit, :update, :show, :destroy]




  ### Shows a specific task and description
  def show
    @test = Job.exists?(task_id: @task.id)
    @jobs = Job.find_by(task_id: @task.id)
  end

  ### Create new tasks
  def new
    @task = Task.new(category_ids: ["8"])
    @categories = Category.all
  end

  def create
    @task = @user.tasks.build(task_params)
    @categories = Category.all

    if @task.valid?
      if @task.check_points
        @task.save
        @user.update(cheetah_points: (@user.cheetah_points - @task.cheetah_points))
        redirect_to user_path(@user)
      else
        flash[:errors] = ["Not enough cheetah points for this task."]
        render :new
      end
    else
      flash[:errors] = @task.errors.full_messages
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
    if @task.valid?
      @task.jobs[0].cheetah.update(cheetah_points: (@task.jobs[0].cheetah.cheetah_points + @task.cheetah_points))
      redirect_to user_path(@user)
    else
      flash[:errors] = @task.errors.full_messages
      redirect_to task_path(@task)
    end
  end

  ### Edit Task and mark complete
  def edit
    @categories = Category.all
  end

  def update
    @task.update(task_params)

    if @task.valid?
      redirect_to user_path(@user)
    else
      flash[:errors] = @task.errors.full_messages
      redirect_to edit_task_path(@task)
    end
  end

  ### User destroy option
  def destroy
    @user.update(cheetah_points: (@user.cheetah_points + @task.cheetah_points))
    @task.destroy
    redirect_to user_path(@user)
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :address, :cheetah_points, category_ids: [])
  end

  def find_task
    @task = Task.find(params[:id])
  end


end
