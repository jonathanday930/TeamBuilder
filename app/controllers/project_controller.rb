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
  @project = Project.find(params[:id])


end


def update
    @project = Project.find(params[:id])
    @project.update_attributes(proj_params)
    # newProject.Title=params[:project][:title]
    #puts (params[:title])
    #newProject.Description=params[:project][:description]



    redirect_to action: "showAll"
end

def destroy
  Project.find(params[:id]).destroy
  redirect_to action:"showAll"
end


def basic_search
  @projects = Project.where(["Title LIKE "'?'" OR Description LIKE "'?'"", "%#{params[:term].gsub("'", "''")}%", "%#{params[:term].gsub("'", "''")}%" ])
  render "showAll"
end



  private
  def proj_params
    params.require(:project).permit(:Title, :Description, :HoursPerWeek,:WeeksInProject)
  end
end


