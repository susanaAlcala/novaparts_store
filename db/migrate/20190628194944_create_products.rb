class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.string :brand
      t.string :version
      t.integer :year
      t.string :photo
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
