ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :sku, :name, :brand, :version, :year, :photo, :category, :price

index do
    column :id
    column :sku
    column :name
    column :brand
    column :version
    column :year
    column :photo
    column :category
    column :price
    column :created_at
    actions
end

form do |f|
    inputs 'Agregando un nuevo producto' do
        input :sku
        input :name
        input :brand
        input :version
        input :year
        input :photo
        input :category
        input :price

    end
    actions
end

filter :sku 
filter :name
filter :brand, as: :select
filter :version, as: :select
filter :year, as: :select
filter :category, as: :select

end

