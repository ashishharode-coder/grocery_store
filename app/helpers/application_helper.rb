module ApplicationHelper

  def vs_path
    params[:action] == 'new' ? vendor_shops_path  : vendor_shop_path(@shop)
  end
end
