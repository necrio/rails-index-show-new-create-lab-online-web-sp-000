class CouponsController < ApplicationController
  def index
    @coupons = Coupon
  end 
  
  def show 
    @coupon = Coupon.find(params[:id])
  end 
  
  def new 
    @coupon = Coupon.new 
  end 
  
  def create 
    @coupon . Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon.code = params[:coupon_code]
    @coupon.save 
    redirect_to coupon_path(@coupon)
  end 
  
  
end
