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
