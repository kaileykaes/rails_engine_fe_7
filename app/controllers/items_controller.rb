class ItemsController < ApplicationController
  def index
    @items = ItemFacade.new.all_items
  end
end