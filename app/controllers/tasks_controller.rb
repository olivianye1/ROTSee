class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = current_cadet.tasks.order(date_created: :desc).page(params[:page]).per_page(15)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @cadets = Cadet.all.order(:lastName)
    @cadet_options = {}
    @cadets.each do |cadet|
      @cadet_options.store("#{cadet.firstName} #{cadet.lastName}", cadet.id)
    end
    @completed_options = {'Uncompleted' => 0, 'Completed' => 1}
  end

  # GET /tasks/1/edit
  def edit
    @cadets = Cadet.all.order(:lastName)
    @cadet_options = {}
    @cadets.each do |cadet|
      @cadet_options.store("#{cadet.firstName} #{cadet.lastName}", cadet.id)
    end
    @completed_options = {'Uncompleted' => 0, 'Completed' => 1}
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    
    if @task.save
      CadetMailer.with(cadet: Cadet.find_by(id: @task.cadet_id), task: @task).task_created_email.deliver_later
      redirect_to '/tasks', success: "New Task was successfully created."
    else
      redirect_to '/tasks', danger: "New Task not created."
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
      if @task.update(task_params)
        CadetMailer.with(cadet: Cadet.find_by(id: @task.cadet_id), task: @task).task_updated_email.deliver_later
        redirect_to @task, success: "Task was successfully updated."
      else
        redirect_to edit_task_path(@task), danger: "Task was not updated."
      end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    redirect_to '/tasks', success: "Task was successfully deleted."
  end
  
  def alltasks
    @tasks = Task.all.order(date_created: :desc).page(params[:page]).per_page(15)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:date_created, :date_due, :description, :completed, :cadet_id)
    end
end
