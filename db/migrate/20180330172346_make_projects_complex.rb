class MakeProjectsComplex < ActiveRecord::Migration[5.1]
  def change
    add_column("projects","SkillsRequired", :integer, :after => "Description")
    add_column("projects","HoursPerWeek", :integer,:after => "SkillsRequired")
    add_column("projects","WeeksInProject", :integer,:after => "HoursPerWeek")
    add_column("projects","Platforms", :integer,:after => "WeeksInProject")
    add_column("projects","Upvotes", :integer,:after => "Platforms")
    add_column("projects","User_ID", :integer,:after => "Upvotes")

  end
end
