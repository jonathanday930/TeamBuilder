require 'prime'
class SkillController < ApplicationController

  def create
    puts Skill.all.count

    new_skill = Skill.new(:SkillName => params[:skill][:SkillName], :PrimeId => generate_next_prime)
    new_skill.save
    render ('skill/new')
  end

  private
  def skill_params_input
    params.require(:project).permit(:SkillName)
  end

  def generate_next_prime
  @table = Skill.all

    if @table.count == 0
      @prime_num=0

  else
    @prime_num= @table.count
end
    #puts prime_num
    new_prime_num = (Prime.instance.first (@prime_num + 1)).last

  end
end
