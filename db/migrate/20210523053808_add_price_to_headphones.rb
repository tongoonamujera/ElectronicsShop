class AddPriceToHeadphones < ActiveRecord::Migration[6.0]
  def change
    add_column :headphones, :price, :string
  end
end
