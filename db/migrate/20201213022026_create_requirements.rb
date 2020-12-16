class CreateRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :requirements do |t|
     t.string :description
     t.string :priority
     t.boolean :complete, :default =>false
      t.timestamps
    end
  end
end
