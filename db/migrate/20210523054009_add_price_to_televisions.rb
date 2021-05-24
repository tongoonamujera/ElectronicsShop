class AddPriceToTelevisions < ActiveRecord::Migration[6.0]
  def change
    add_column :televisions, :price, :string
  end
end
