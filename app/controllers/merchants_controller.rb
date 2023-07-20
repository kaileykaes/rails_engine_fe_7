class MerchantsController < ApplicationController
  before_action :facade
  
  def index
    @merchants = @facade.merchants
  end

  def show
    @merchant = @facade.merchant(params[:id])
  end
  
  private
  def facade 
    @facade = MerchantFacade.new
  end
end