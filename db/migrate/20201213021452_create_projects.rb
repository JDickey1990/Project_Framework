class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.datetime :project_deadline
      t.belongs_to :user
      t.timestamps
    end
  end
end
