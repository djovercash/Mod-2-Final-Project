class TasksController < ApplicationController


  ### Shows a specific task and description
  def show
    @task = Task.find(params[:id])
  end

  ### Create new tasks
  def new
    @task = Task.new
    @categories = Category.all
  end

  def create
    @task = Task.create(task_params)
    @categories = Category.all

    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
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
    params.require(:task).permit(:title, :description, :snake_id, category_ids: [])
  end


end
