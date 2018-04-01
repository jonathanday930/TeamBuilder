class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :PrimeId
      t.text :SkillName

      t.timestamps
    end
  end
end
