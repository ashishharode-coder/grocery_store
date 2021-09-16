class Vendor::VendorController < ActionController::Base
  before_action :authenticate_seller!

  layout "vendor"
end
