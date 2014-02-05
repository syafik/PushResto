class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
