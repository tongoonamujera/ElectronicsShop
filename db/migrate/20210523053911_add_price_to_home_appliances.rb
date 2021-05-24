class AddPriceToHomeAppliances < ActiveRecord::Migration[6.0]
  def change
    add_column :home_appliances, :price, :string
  end
end
