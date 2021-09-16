ActiveAdmin.register Seller do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation, :mobile_number, :address, :city, :state, :pin_code

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :mobile_number
    column :address
    column :city
    column :state
    column :pin_code
    actions
  end
end