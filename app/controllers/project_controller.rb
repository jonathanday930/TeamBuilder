class ProjectController < ApplicationController
def new
  @skills = Skill.all
  puts @skills.size
end

def show
  @project = Project.find(params[:id])


  #@project = Project.find(params[:id])
  puts @project.Title
end
def showAll
  @skills = Skill.all
  @projects = Project.all
end

def create
    new_project = Project.new()
    new_project.Title = params[:project][:Title]
    new_project.Description = params[:project][:Description]
    new_project.HoursPerWeek = params[:project][:HoursPerWeek]
    new_project.WeeksInProject= params[:project][:WeeksInProject]
    new_project.SkillsRequired= calculate_skill_number
    new_project.save

    # newProject.Title=params[:project][:title]
    #puts (params[:title])
    #newProject.Description=params[:project][:description]
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

def calculate_skill_number
@prime_num = 1

    Skill.all.each do |skill|
    if params[:project][skill[:SkillName]].to_i == 1
      @prime_num = @prime_num * skill[:PrimeId]
    end
  end
  return @prime_num
end

end


