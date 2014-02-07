class AddRateToProduct < ActiveRecord::Migration
  def change
    add_column :products, :rate, :integer, :default => 0
  end
end
