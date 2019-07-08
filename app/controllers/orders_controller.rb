class OrdersController < ApplicationController
  def create
    p = Product.find(params[:product_id])
    o = Order.find_or_create_by(user: current_user, product: p, payed: false, price: p.price)
    o.quantity += 1

    if o.save
      redirect_to products_path, notice: "El producto ha sido agregado al carro."
    else
      redirect_to products_path, alert: "El producto NO ha sido agregado al carro"
    end
  end
end
