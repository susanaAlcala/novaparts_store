class ChangeColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :quantity, :integer, :default => 0
    change_column :orders, :payed, :boolean, :default => false

  end
end
