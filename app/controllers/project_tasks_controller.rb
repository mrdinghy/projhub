class ProjectTasksController < ApplicationController
  before_action :set_project_task, only: [:show, :edit, :update, :destroy]

  # GET /project_tasks
  # GET /project_tasks.json
  def index
    @project_tasks = ProjectTask.all
  end

  # GET /project_tasks/1
  # GET /project_tasks/1.json
  def show
  end

  # GET /project_tasks/new
  def new
    @project_task = ProjectTask.new
  end

  # GET /project_tasks/1/edit
  def edit
  end

  # POST /project_tasks
  # POST /project_tasks.json
  def create
    @project_task = ProjectTask.new(project_task_params)

    respond_to do |format|
      if @project_task.save
        format.html { redirect_to @project_task, notice: 'Project task was successfully created.' }
        format.json { render :show, status: :created, location: @project_task }
      else
        format.html { render :new }
        format.json { render json: @project_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_tasks/1
  # PATCH/PUT /project_tasks/1.json
  def update
    respond_to do |format|
      if @project_task.update(project_task_params)
        format.html { redirect_to @project_task, notice: 'Project task was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_task }
      else
        format.html { render :edit }
        format.json { render json: @project_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_tasks/1
  # DELETE /project_tasks/1.json
  def destroy
    @project_task.destroy
    respond_to do |format|
      format.html { redirect_to project_tasks_url, notice: 'Project task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit_multiple
    @project_tasks = ProjectTask.all
  end
  def update_multiple
   @project_tasks = ProjectTask.update(params[:project_tasks].keys, params[:project_tasks].values)

   @project_tasks.reject! { |p| p.errors.empty? }
   if @project_tasks.empty?
     redirect_to params[:project_url]
   else
     render "edit_multiple"
   end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_task
      @project_task = ProjectTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_task_params
      params.require(:project_task).permit(:name, :description, :code, :plan_start, :plan_end, :actual_start, :actual_end, :location, :province_id, :task_value, :task_weight, :lat, :long, :task_type, :taskcomplete )
    end
end
