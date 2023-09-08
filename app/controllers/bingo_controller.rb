class BingoController < ApplicationController
  def new
    items = BingoItem.order('RANDOM()').limit(25)
    render json: items
  end

end
