class HomeController < ApplicationController


  def index
    @projects = Project.all
    @projecttypes = ProjectType.all
    @projectcount = Project.all.count
    @project_value = Project.sum(:project_value)

    @projectscompleted = Project.where('actual_end is not NULL').count
    @projectsinprogress = Project.where('actual_end is NULL and actual_start is not NULL').count
    @projectsinplanning = Project.where('actual_end is NULL and actual_start is NULL').count

    @projectscompleted_value = Project.where('actual_end is not NULL').sum(:project_value)
    @projectsinprogress_value = Project.where('actual_end is NULL and actual_start is not NULL').sum(:project_value)
    @projectsinplanning_value = Project.where('actual_end is NULL and actual_start is NULL').sum(:project_value)


    @provinces = Province.all


  end

# GET /needs/1
# GET /needs/1.json
  def show
  end

# GET /needs/new
  def new
    @need = Need.new
  end


end
