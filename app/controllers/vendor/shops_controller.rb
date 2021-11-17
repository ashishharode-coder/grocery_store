class Vendor::ShopsController < Vendor::VendorController
  def index
  end

  def show
  end

  def new
    @shop = current_seller.build_shop
  end

  def create
    shop = current_seller.build_shop(shop_params)
    if shop.save
      flash[:success] = "Shop added successfully."
      redirect_to vendor_shops_path
    else
      flash[:error] = shop.errors.full_message[0]
      render :new
    end
  end

  def edit
  end

  def update
    
  end

  private
  def shop_params
    params.require(:shop).permit(:seller_id, :name, :opening_time, :closing_time, :phone_number, :lat, :long, :address, :area, :city, :pin_code, :state, :description, :image)
  end
end