ActiveAdmin.register Shop do
  permit_params :seller_id, :name, :email, :password, :password_confirmation, :phone_number, :address, :area, :city, :state, :pin_code, :description, :image, :opening_time, :closing_time, :lat, :long

  index do
    selectable_column
    id_column
    column :seller
    column :name
    column :phone_number
    column :opening_time
    column :closing_time
    column :lat
    column :long
    column :address
    column :area
    column :city
    column :state
    column :pin_code
    column :description
    column :image
    actions
  end

  form do |f|
    f.inputs "Shop Details" do
      f.input :seller_id, as: :select, :collection => Seller.all.map{ |seller| [seller.first_name, seller.id]}, include_blank: false
      f.input :name 
      f.input :phone_number
      f.input :opening_time
      f.input :closing_time
      f.input :image, :as => :file
      f.input :lat
      f.input :long
      f.input :address
      f.input :area
      f.input :city
      f.input :state
      f.input :pin_code
      f.input :description
    end
    f.button :Submit
  end
end