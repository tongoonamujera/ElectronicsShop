class AddPriceToLaptops < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :price, :string
  end
end
