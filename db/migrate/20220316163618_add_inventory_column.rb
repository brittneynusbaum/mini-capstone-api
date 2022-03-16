class AddInventoryColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :inventory, :integer
    change_column :products, :description, :text
  end
end
