class VisitorsController < ApplicationController
  def index

    @countneeds = Need.all.count
    @countprojects = Project.all.count
    @countpolicies = Policy.all.count

    @rectcss = self.joint1





    render 'visitors/index'
  end


  def joint1

    @projects = Project.all
    jcss = ''
    jcss_x = 100
    jcss_y = 50
    jcss_w = 300
    jcss_h = 30
    jgraph = ''

    jseta = " = new joint.shapes.basic.Rect({"
    jsetz = "});"

    @projects.each do |p|
      tasks = ProjectTask.where('project_id = ?', p.id)
      tasknum = tasks.count
      boxname= 'proj' + p.id.to_s
      jposition= "position: { x: " + jcss_x.to_s + ", y: " + jcss_y.to_s + "},"
      jsize= "size: { width: " + jcss_w.to_s + ", height: " + jcss_h.to_s + "},"
      jattrs = "attrs: { rect: { fill: 'grey' }, text: { text: '" + p.name + "', fill: 'white' } }"

      thiscss = "var " +  boxname + jseta + jposition + jsize + jattrs + jsetz

      jcss = jcss + thiscss
      if p == @projects.last
        jg = boxname
      else
        jg = boxname + ', '
      end




        jgraph = jgraph + jg
      jcss_y = jcss_y + 50

    end
    final = jcss + ' graph.addCells([' + jgraph + ']);'
    return final
  end


end
