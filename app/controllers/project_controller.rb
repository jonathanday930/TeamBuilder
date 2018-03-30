class ProjectController < ApplicationController
def new

end

def show
  @project = Project.find(params[:id])


  #@project = Project.find(params[:id])
  puts @project.Title
end
def showAll
    @projects = Project.all
end

def create
    @project = Project.new(proj_params)
   # newProject.Title=params[:project][:title]
    #puts (params[:title])
    #newProject.Description=params[:project][:description]
    @project.save
    redirect_to action: "showAll"
  end

def edit
  

end




  private
  def proj_params
    params.require(:project).permit(:Title, :Description)
  end
end


