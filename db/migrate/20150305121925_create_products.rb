class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :weight
      t.decimal :price, precision: 15, scale: 2

      t.timestamps null: false
    end
  end
end
