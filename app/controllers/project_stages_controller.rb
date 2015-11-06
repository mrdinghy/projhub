class ProjectStagesController < ApplicationController
  before_action :set_project_stage, only: [:show, :edit, :update, :destroy]

  # GET /project_stages
  # GET /project_stages.json
  def index
    @project_stages = ProjectStage.all
  end

  # GET /project_stages/1
  # GET /project_stages/1.json
  def show
  end

  # GET /project_stages/new
  def new
    @project_stage = ProjectStage.new
  end

  # GET /project_stages/1/edit
  def edit
  end

  # POST /project_stages
  # POST /project_stages.json
  def create
    @project_stage = ProjectStage.new(project_stage_params)

    respond_to do |format|
      if @project_stage.save
        format.html { redirect_to @project_stage, notice: 'Project stage was successfully created.' }
        format.json { render :show, status: :created, location: @project_stage }
      else
        format.html { render :new }
        format.json { render json: @project_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_stages/1
  # PATCH/PUT /project_stages/1.json
  def update
    respond_to do |format|
      if @project_stage.update(project_stage_params)
        format.html { redirect_to @project_stage, notice: 'Project stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_stage }
      else
        format.html { render :edit }
        format.json { render json: @project_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_stages/1
  # DELETE /project_stages/1.json
  def destroy
    @project_stage.destroy
    respond_to do |format|
      format.html { redirect_to project_stages_url, notice: 'Project stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_stage
      @project_stage = ProjectStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_stage_params
      params.require(:project_stage).permit(:name, :description, :code, :completed)
    end
end
