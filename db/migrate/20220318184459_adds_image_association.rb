class AddsImageAssociation < ActiveRecord::Migration[7.0]
  def change
    add_column :image, :product_id, :integer
  end
end
