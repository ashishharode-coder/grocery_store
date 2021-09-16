class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :address, :city, :state, :pin_code
  validates :mobile_number, uniqueness: true, presence: true, length: { is: 10 }

  has_one :shop

  def name
    "#{first_name} #{last_name}"
  end

  # after_create :add_shop

  # def add_shop
    
  # end
end
