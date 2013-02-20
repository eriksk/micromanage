class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :name
      t.text :description
      t.decimal :value
      t.integer :frequency
      t.integer :user_id

      t.timestamps
    end
  end
end
