class StoreController < ApplicationController
  def increment_count
  if session[:counter].nil?
    session[:counter] = 0
  end
  session[:counter] += 1
end

  def index
    @count = increment_count
    @products = Product.order(:title)
    @count_message = "You've been here #{@count} times" if session[:counter] >5
  end
end
