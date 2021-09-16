class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops, id: :uuid do |t|
      t.uuid :seller_id

      t.string :name
      t.time   :opening_time
      t.time   :closing_time

      t.string  :phone_number
      t.string  :lat
      t.string  :long
      t.text    :address
      t.string  :area
      t.string  :city
      t.integer :pin_code
      t.string  :state
      t.text    :description
      t.timestamps
    end
  end
end