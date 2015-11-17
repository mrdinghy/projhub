class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projectcount = Project.all.count

    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project_tasks = ProjectTask.where('project_id = ?', @project.id)
    @projectdocuments = ProjectDocument.where('project_id = ?', @project.id)
    @projectimages = ProjectImage.where('project_id = ?', @project.id)

    @taskweightsum = @project_tasks.sum(:task_weight)
    @taskscompleted = @project_tasks.where('taskcomplete is true').sum(:task_weight)

    @taskvaluesum = @project_tasks.sum(:task_value)
    @tasksexpendedsum = @project_tasks.sum(:expenditures)





    if (@taskscompleted.nil? or @taskscompleted == 0) or @tasksweightsum == 0
      @pct_work =0

    else
      @pct_work = (@taskscompleted.to_f / @taskweightsum.to_f * 100.0).round
    end

    if @project.total_expended.nil? or @project.project_value.nil?
      @pct_expended = 0
    else
      @pct_expended = (@project.total_expended.to_f / @project.project_value.to_f * 100.0).round

    end

    if @tasksexpendedsum.nil? or (@taskvaluesum.nil? or @taskvaluesum == 0)
      @pct_taskexpended = 0
    else
      @pct_taskexpended = (@tasksexpendedsum.to_f / @taskvaluesum.to_f * 100.0).round
    end

    if !@project.actual_end.nil?
        @pct_time = 100
        @days_left = 0
    elsif !@project.actual_start.nil?
        @days_project = (@project.plan_end - @project.actual_start).to_i
        @days_sofar = (DateTime.now.to_date - @project.actual_start).to_i
        @pct_time = (@days_sofar.to_f / @days_project.to_f  * 100.0).round
        @days_left = @days_project - @days_sofar
    else
      @days_project = (@project.plan_end - @project.plan_start).to_i
      @days_sofar = 0
      @pct_time = 0
      @days_left = @days_project
    end

    @new_project_document = ProjectDocument.new
    @new_project_image = ProjectImage.new


    @identifications = Identification.where('project_id = ?', @project.id)
    idpluck = @identifications.pluck(:need_id)
    @needs = Need.where('id in (?)', idpluck)


    @rectcss = self.joint1(@project.id)

  end


  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
  
  

    #puts '*****************cartodb22************************'
    #response = HTTParty.get('https://cantina23.cartodb.com/api/v2/sql?q=SELECT name FROM premas_projects&api_key=83a1b3e6c95613255bef720617d34adb0a7b87c1')
    #puts response
    #puts '*****************cartodb22************************'

    #puts '*****************cartodb22************************'
    #response = HTTParty.get("https://cantina23.cartodb.com/api/v2/sql?q=UPDATE premas_projects SET value=33333 WHERE cartodb_id=2&api_key=83a1b3e6c95613255bef720617d34adb0a7b87c1")
    #puts response
    #puts '*****************cartodb22************************'

  
  
  
  
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  def joint1(id)
    @project = Project.find(id)


    jcss_x = 100
    jcss_y = 50
    jcss_w = 300
    jcss_h = 30


    jseta = " = new joint.shapes.basic.Rect({"
    jsetz = "});"




      boxname= 'proj' + @project.id.to_s
      jgraph = boxname + ', '

    jposition= "position: { x: " + jcss_x.to_s + ", y: " + jcss_y.to_s + "},"
      jsize= "size: { width: " + jcss_w.to_s + ", height: " + jcss_h.to_s + "},"
      jattrs = "attrs: { rect: { fill: 'grey' }, text: { text: '" + @project.name + "', fill: 'white' } }"

      projectcss = "var " +  boxname + jseta + jposition + jsize + jattrs + jsetz



    task_x = 400
    task_y = jcss_y + 60
    task_w = 300
    task_h = 30
    taskscript = ''
    tasks = ProjectTask.where('project_id = ?', @project.id)
    tasknum = tasks.count

    vx1 = 250
    vy1 = 110
    vx2 = 250
    vy2 = 125
    vx3 = 300
    vy3 = vy2

      tasks.each do |t|

      taskbox= 'task' + t.id.to_s
      tposition= "position: { x: " + vx3.to_s + ", y: " + task_y.to_s + "},"
      tsize= "size: { width: " + task_w.to_s + ", height: " + task_h.to_s + "},"
      taskattrs = "attrs: { rect: { fill: 'green' }, text: { text: '" + t.name + "', fill: 'white' } }"

      thistask = "var " +  taskbox + jseta + tposition + tsize + taskattrs + jsetz




      linkbox = 'tlink' + t.id.to_s

      vertices = "vertices: [{ x: " + vx1.to_s + ", y: " + vy1.to_s + " }, { x: " + vx2.to_s + ", y: " + vy2.to_s + " }, { x: " + vx3.to_s + ", y: " + vy3.to_s + " }]"

      thislink = "var tlink" + t.id.to_s + " = new joint.dia.Link({ source: { id: " + boxname + ".id }, target: { id: " + taskbox + ".id }, " + vertices + ",  attrs: {}});"
      thislinkattr = "tlink" + t.id.to_s + ".attr({'.connection': { stroke: 'grey', 'stroke-width': 2 } });"





      taskscript = taskscript + thistask + thislink + thislinkattr
      if t == tasks.last
        jg = taskbox + ', ' + linkbox
      else
        jg = taskbox + ', ' + linkbox + ', '
      end

      jgraph = jgraph + jg

      task_y = task_y + 40
      vy2 = vy2 + 40
      vy3 = vy3 + 40

    end


    final = projectcss + taskscript + ' graph.addCells([' + jgraph + ']);'
      return final
    end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :code, :plan_start, :plan_end, :actual_start, :actual_end, :province_id, :location, :project_value, :lat, :long, :project_type,
      :calcscheduletasks, :calcfinancetasks, :total_expended)
    end
end
