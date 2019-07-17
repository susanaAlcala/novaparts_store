ActiveAdmin.register Comment, as: 'Review' do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
belongs_to :product
#belongs_to :user

# permit_params :list, :of, :attributes, :on, :model
#
# or
permit_params :user_id, :content, :product_id
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
    column :id
     column :author do |review|
       review.user.email
     end
     column :reviews do |review|
        review.count
    end
    actions
end

# form do |f|
    # inputs 'Agregar nuevo comentario' do
        # f.input:user_id,
          # label: 'Author',
            #  as: :select,
    #  collection: User.pluck(:email, :id)
          # input:content
    # end
    # actions
# end
  # 
  # filter:created_at
  
end