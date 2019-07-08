class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.boolean :payed
      t.integer :quantity
      t.decimal :price, :precision => 11, :scale => 2

      t.timestamps
    end
  end
end
