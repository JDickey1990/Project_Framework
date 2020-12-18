class CreateRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :requirements do |t|
     t.datetime :deadline
     t.string :description
     t.string :priority
      t.timestamps
    end
  end
end
