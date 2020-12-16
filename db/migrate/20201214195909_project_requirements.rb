class ProjectRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :project_requirements do |t|
      t.datetime :deadline
      t.timestamps
      t.belongs_to :project
      t.belongs_to :requirement
     end
  end
end