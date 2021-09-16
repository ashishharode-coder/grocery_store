class Vendor::ShopsController < Vendor::VendorController
  before_action :set_shop
  def index
  end

  def set_shop
    @shop = current_seller.shop
  end
end