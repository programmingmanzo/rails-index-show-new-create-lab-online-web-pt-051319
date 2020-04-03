class CouponsController < ApplicationController
  
  def index
    @coupons = Coupon.all 
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new_new
    
  end

  def create
    @coupon = Coupon.create(coupon_params(:coupon_code,:store))

    redirect_to coupon_path(@coupon)
  end

  private

  def coupon_params(*args)
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
