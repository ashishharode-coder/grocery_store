class Vendor::VendorController < ActionController::Base
  before_action :authenticate_seller!
  before_action :set_shop

  layout "vendor"

  def set_shop
    @shop = current_seller.shop
  end
end
