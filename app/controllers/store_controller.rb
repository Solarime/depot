class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all
    # if session[:counter].nil?
    #   @counter = 0
    # else
    #   @counter = session[:counter] + 1
    # end
    @counter = session[:counter].nil? ? 0 : session[:counter] + 1
    session[:counter] = @counter
    @cart = current_cart
  end
end
