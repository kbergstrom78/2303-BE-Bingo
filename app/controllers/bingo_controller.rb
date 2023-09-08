class BingoController < ApplicationController
  def new
    @bingo_items = BingoItem.limit(25).order("RANDOM()")
    render json: @bingo_items
  end

  def card
    @bingo_items = generate_bingo_card_data

    render 'card'
  end

  def caller

    session[:called_items] ||= []

    remaining_items = BingoItem.where.not(id: session[:called_items])
    if remaining_items.empty?
      render json: { message: "All items have been called!" }
      return
    end


    called_item = remaining_items.sample
    session[:called_items] << called_item.id

    render json: { item: called_item.name }
  end

  def set_session
    session[:called_items] = params[:called_items]
    render json: { status: "Session set!" }
  end

  private

  def generate_bingo_card_data
    bingo_items = BingoItem.limit(25).order("RANDOM()")
    return bingo_items
  end
end
