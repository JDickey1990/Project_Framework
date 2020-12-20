class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :password_digest
      t.string :email
      t.string :uid
      t.string :provider
      t.boolean :admin, :default =>false
    end
  end
end
