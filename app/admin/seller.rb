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

  form do |f|
    f.inputs "Seller Details" do
      f.input :email 
      f.input :first_name
      f.input :last_name
      f.input :mobile_number
      f.input :address
      f.input :city
      f.input :state
      f.input :pin_code
      f.input :password
      f.input :password_confirmation
    end
    f.button :Submit
  end
end