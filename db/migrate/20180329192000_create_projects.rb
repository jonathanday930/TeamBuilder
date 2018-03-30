class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :Title
      t.text :Description

      t.timestamps
    end
  end
end
