class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new(task_params)
  end
  def create
    @task = Task.find(params[:id])
    if @task.save
      redirect_to tasks_path, notice: "Quote was successfully created."
    else
      render :new
    end
  end
  def update
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: "Quote was successfully updated."
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
    params.require(:quote).permit(:title, :description)
  end
end
