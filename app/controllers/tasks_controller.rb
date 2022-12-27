class TasksController < ApplicationController
  def index
    @tasks = Task.all
    #tasks are now sorted by the completed attribute, but nothing else
    @tasks = @tasks.sort_by { |a| a.completed ? 1 : 0 }
    @task = Task.new
  end
  def show
    @task = Task.find(params[:id])
  end
  def toggle
    @task = Task.find(params[:id])
    @task.update(completed: params[:completed])
    render json: { message: "Success" }
  end
  def new
    @task = Task.new
  end
  def edit
    @task = Task.find(params[:id])
  end
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Quote was successfully created."
    else
      render :new
    end
  end
  def update
    raise
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task was successfully updated."
    else
      render :edit
    end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "Quote was successfully destroyed."
  end
  private
  def task_params
    params.require(:task).permit(:title, :description, :importance)
  end
end
