class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :currency
      t.integer :salary
      t.integer :tax

      t.timestamps
    end
  end
end
