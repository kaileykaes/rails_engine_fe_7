class MerchantsController < ApplicationController
  before_action :facade
  
  def index
    @merchants = @facade.merchants
  end

  def show
    require 'pry'; binding.pry
  end
  
  private
  def facade 
    @facade = MerchantFacade.new
  end
end