class CreateProjectRequirementsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :projects, :requirements do |t|
      # t.index [:project_id, :requirement_id]
      # t.index [:requirement_id, :project_id]
      t.datetime :deadline
    end
  end
end
