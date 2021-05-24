class AddPriceToCellphones < ActiveRecord::Migration[6.0]
  def change
    add_column :cellphones, :price, :string
  end
end
