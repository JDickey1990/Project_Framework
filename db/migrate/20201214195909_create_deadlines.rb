class CreateDeadlines < ActiveRecord::Migration[6.0]
  def change
    create_table :deadlines do |t|
      t.datetime :deadline
      t.boolean :completed, :default =>false
      t.timestamps
      t.belongs_to :project
      t.belongs_to :requirement
     end
  end
end