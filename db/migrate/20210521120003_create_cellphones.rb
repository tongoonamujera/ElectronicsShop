class CreateCellphones < ActiveRecord::Migration[6.0]
  def change
    create_table :cellphones do |t|
      t.string :image
      t.string :brandname
      t.string :color
      t.string :memory
      t.string :description
      t.string :condition
      t.string :location

      t.timestamps
    end
  end
end
