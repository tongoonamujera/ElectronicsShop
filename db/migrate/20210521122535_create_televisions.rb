class CreateTelevisions < ActiveRecord::Migration[6.0]
  def change
    create_table :televisions do |t|
      t.string :image
      t.string :brandname
      t.string :description
      t.string :condition
      t.string :location

      t.timestamps
    end
  end
end
