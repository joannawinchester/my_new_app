class RenameColorsInProducts < ActiveRecord::Migration
  def change
  	rename_column :products, :color, :price
  	change_column :products, :price, :integer
  end
end
