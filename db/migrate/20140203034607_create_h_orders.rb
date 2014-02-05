class CreateHOrders < ActiveRecord::Migration
  def change
    create_table :h_orders do |t|
      t.integer :id_user
      t.string :shipping
      t.integer :phone

      t.timestamps
    end
  end
end
